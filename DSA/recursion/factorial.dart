printFactorial(int n) {
  int fun_N_minus_one = 0;
  int factorial = 0;
  if (n == 0) {
    return 1;
  }
  fun_N_minus_one = printFactorial(n - 1);
  factorial += n * fun_N_minus_one;

  return factorial;
}
