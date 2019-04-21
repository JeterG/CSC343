int myadd (int& const Word1, int& const Word2) {
  return Word1 + Word2;
}
int main() {
  int Word1 = 0x7fffffff;
  int Word2 = 0xffffffff;
  int Word3 = 0;
  Word3 = myadd(Word1, Word2);
  return 0;
}
