// Bug: tax calculate karte waqt wrong rate use ho raha hai
export function calculateTax(amount: number): number {
  return amount * 0.15; // tax rate 15% (0.15)
}