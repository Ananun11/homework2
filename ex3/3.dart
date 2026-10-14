Future<int> delayedValue(int value) async {
  await Future.delayed(Duration(seconds: 1));
  return value;
}

Future<int> sumValues(int a, int b) async {
  int num1 = await delayedValue(a);
  int num2 = await delayedValue(b);

  int sum = num1 + num2;

  return sum;
}

void main() async {
  print(await sumValues(5, 10));
}