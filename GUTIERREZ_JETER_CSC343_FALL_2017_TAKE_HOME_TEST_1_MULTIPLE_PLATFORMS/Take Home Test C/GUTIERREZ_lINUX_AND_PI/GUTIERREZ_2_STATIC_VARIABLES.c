//Using 2 Globally Static Variables and using 3 Static Variables
static int a = 1;
static int b = 2;
void main() {

  static int c = 3;
  static int d = 4;
  static int e = 5;
  a = b + c;
  d = a - e;
}
