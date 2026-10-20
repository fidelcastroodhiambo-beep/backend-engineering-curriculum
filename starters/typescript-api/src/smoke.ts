import { health } from "./health.js";

const result = health();
if (result.status !== "ok") {
  throw new Error("TypeScript smoke check failed");
}
console.log("TypeScript starter smoke: ok");
