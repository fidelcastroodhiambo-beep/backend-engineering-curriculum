import { describe, expect, it } from "vitest";
import { health } from "../src/health.js";

describe("health", () => {
  it("returns ok status", () => {
    expect(health()).toEqual({ status: "ok" });
  });
});
