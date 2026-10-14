List<int> findPair(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] == target) {
        return [i, j];
      }
    }
  }

  return [];
}

void main() {
  List<int> numbers = [2, 7, 11, 15];

  print(findPair(numbers, 9));
}