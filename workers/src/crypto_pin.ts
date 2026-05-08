const PBKDF2_ITERATIONS = 120_000;

function bytesToHex(bytes: ArrayBuffer): string {
  return [...new Uint8Array(bytes)].map((b) => b.toString(16).padStart(2, "0")).join("");
}

function hexToBytes(hex: string): Uint8Array {
  const arr = new Uint8Array(hex.length / 2);
  for (let i = 0; i < arr.length; i++) {
    arr[i] = parseInt(hex.slice(i * 2, i * 2 + 2), 16);
  }
  return arr;
}

export async function hashPin(pin: string, saltHex: string): Promise<string> {
  const enc = new TextEncoder();
  const salt = hexToBytes(saltHex);
  const keyMaterial = await crypto.subtle.importKey(
    "raw",
    enc.encode(pin),
    "PBKDF2",
    false,
    ["deriveBits"],
  );
  const bits = await crypto.subtle.deriveBits(
    {
      name: "PBKDF2",
      salt,
      iterations: PBKDF2_ITERATIONS,
      hash: "SHA-256",
    },
    keyMaterial,
    256,
  );
  return bytesToHex(bits);
}

export function randomSaltHex(bytes = 16): string {
  const salt = crypto.getRandomValues(new Uint8Array(bytes));
  return bytesToHex(salt.buffer);
}

export async function verifyPin(pin: string, saltHex: string, storedHashHex: string): Promise<boolean> {
  const computed = await hashPin(pin, saltHex);
  if (computed.length !== storedHashHex.length) return false;
  let ok = 0;
  for (let i = 0; i < computed.length; i++) {
    ok |= computed.charCodeAt(i) ^ storedHashHex.charCodeAt(i);
  }
  return ok === 0;
}
