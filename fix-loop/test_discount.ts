import { applyDiscount } from "./discount";

const result = applyDiscount(100, 20);
console.log("Result:", result);

if (result === 80) {
  console.log("PASS: discount sahi calculate hua");
} else {
  console.log("FAIL: expected 80, got " + result);
}