// Bug: discount calculate karte waqt price negative ho sakti hai
export function applyDiscount(price: number, discountPercent: number): number {
  const discounted = price - (price * discountPercent / 100);
  return discounted;
}