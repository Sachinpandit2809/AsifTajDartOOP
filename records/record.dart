void main() {
  var out = arith(10, 4);
  var (sum, sub) = out;
  print(sub);
  print(sum);
}

(int, int) arith(int x, int y) {
  return (x + y, x - y);
}
