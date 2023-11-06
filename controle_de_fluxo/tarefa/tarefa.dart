void main() {
  List<int> numbers = [78, 112, 45, 126, 99, 103, 57, 138, 82, 115];

  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] >= 100) {
      print("numero / index: ${numbers[i]} / $i");
    }
  }
}
