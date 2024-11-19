// void main() {
//   printDec(10);
// }

printDec(n) {
  if (n == 1 || n == 0 ) { // base class 
    print(n,);
    return;
  }
  print(n); /// work 
  printDec(n-2);// calling to itself 
}


// void main() {
//   printDec(10);
// }

// void printDec(int n) {
//   if (n == 1) {
//     print(n); // Base case: print 1 and return
//     return;
//   }
//   print(n); // Print the current value of n
//   printDec(n - 1); // Recursive call with n - 1
// }
