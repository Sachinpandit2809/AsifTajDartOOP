void main() {
  Nullable nullable = Nullable();
  nullable.h = 20;
  nullable.w = 40;

  nullable.calculateAreaOfRectangle();
}

class Nullable {
  double? h;
  double? w;

  void calculateAreaOfRectangle() {
    print(" area of Rectangle is = ${(h ?? 0) * (w ?? 0)}");
  }
}
