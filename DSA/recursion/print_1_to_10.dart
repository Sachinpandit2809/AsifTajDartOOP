import 'dart:mirrors';

// void main() {
//   printInc(1);
// }

void printInc(n) {
  if (n == 20) {
    print("${n}");
    return;
  }
  print("${n}");

  printInc(n + 1);
}
