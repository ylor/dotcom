/**
 * Welcome to Cloudflare Workers! This is your first worker.
 *
 * - Run `npm run dev` in your terminal to start a development server
 * - Open a browser tab at http://localhost:8787/ to see your worker in action
 * - Run `npm run deploy` to publish your worker
 *
 * Learn more at https://developers.cloudflare.com/workers/
 */

const facts = [
  "accepts credit; but not blame",
  "cat catcher",
  "ceo of htmx",
  "charmingly garrulous",
  "dark mode enthusiast",
  "every second counts",
  "grug brained",
  "half-life 3 numerologist",
  "inside me are two wolves",
  "knows enough to be dangerous",
  "minimalist",
  "neon genesis evangelion evangelist",
  "occasional grass toucher",
  "poodle-pilled",
  "yes, chef",
];

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const randomFact = facts[Math.floor(Math.random() * facts.length)];

    switch (url.pathname) {
      case "/message":
        return new Response(randomFact);
      case "/random":
        return new Response(crypto.randomUUID());
      default:
        return new Response("Not Found", { status: 404 });
    }
  },
};
