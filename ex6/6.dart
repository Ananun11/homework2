Future<int> getNumber(int value) async {
  if (value <= 0) {
    throw Exception("Bacasakan e");
  }
  await Future.delayed(Duration(seconds: 1));
  return value;
}
Future<int> safeGetNumber(int value) async {
  try {
    int num = await getNumber(value);
    return num;
  } catch (e) {
    return 0;
  }
}

void main() async {
  print(await safeGetNumber(5));
  print(await safeGetNumber(-2));
  print(await safeGetNumber(0));
}