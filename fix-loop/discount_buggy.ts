// DEMO / TESTING ONLY — yeh file jaan bhoojh kar ghalat logic ke saath hai.
// Asal code (discount.ts) ko mat badlo; yeh sirf buggy behavior dikhane ke liye hai.

// Ghalat version: discount calculate karte waqt price ko discountPercent se
// divide kar diya gaya hai, jis se result bilkul ghalat nikalta hai.
// Sahi formula hoti: price - (price * discountPercent / 100)
export function applyDiscount(price: number, discountPercent: number): number {
  const discounted = price / discountPercent; // DEMO BUG: galat formula
  return discounted;
}

// Test case (expected fail):
// applyDiscount(100, 20) === 5  (ghalat; sahi jawab 80 hota)
