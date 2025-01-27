void printListInReverse(List<dynamic> list) {
  print('Original List: $list');

  List<dynamic> reversedList = [];
  for (int i = list.length - 1; i >= 0; i--) {
    reversedList.add(list[i]);
  }

  print('Reversed List: $reversedList');
}

void main() {

  List<int> numbers = [1, 2, 3, 4, 5];
  
  printListInReverse(numbers);
  }
