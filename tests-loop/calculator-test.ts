import { add, multiply } from "./calculator";
import * as assert from "assert";

// Test 1
assert.strictEqual(add(2, 3), 5, "add(2,3) should be 5");
console.log("Test 1 PASSED: add works");

// Test 2
assert.strictEqual(multiply(4, 5), 20, "multiply(4,5) should be 20");
console.log("Test 2 PASSED: multiply works");

console.log("ALL TESTS PASSED");