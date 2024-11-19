// prime number
void main() {
  print("sachin");
  prime(11);
}

void prime(int n) {
  int count = 0;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      count++;
    }
  }
  if (count == 2) {
    print("prime");
  } else {
    print("not prime");
  }
}
