const apiKey = process.env.OPENROUTER_API_KEY;
const model = "nvidia/nemotron-3-super-120b-a12b:free";

async function test() {
  console.log("Testing OpenRouter API...");
  const response = await fetch("https://openrouter.ai/api/v1/chat/completions", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "Authorization": `Bearer ${apiKey}`,
    },
    body: JSON.stringify({
      model,
      messages: [{ role: "user", content: "Say hello!" }],
    }),
  });

  if (!response.ok) {
    console.error("Error:", response.status, await response.text());
  } else {
    const data = await response.json();
    console.log("Success:", JSON.stringify(data, null, 2));
  }
}

test();
