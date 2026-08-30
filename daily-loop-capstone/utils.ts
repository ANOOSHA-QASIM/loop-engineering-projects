// Input validation added: throws on non-number / NaN
export function formatPrice(price: number): string {
  if (typeof price !== 'number' || Number.isNaN(price)) {
    throw new Error('price must be a valid number');
  }
  return "$" + price;
}

// Negative numbers handled: throws on negative width/height
export function calculateArea(width: number, height: number): number {
  if (width < 0 || height < 0) {
    throw new Error('width and height must be non-negative');
  }
  return width * height;
}

// Whitespace trimmed from name
export function greet(name: string): string {
  return `Hello, ${name.trim()}!`;
}