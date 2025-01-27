import 'dart:io';
class Node {
  int value;
  Node? next;
  Node(this.value, [this.next]);
}
class LinkedList {
  Node? head;
  // Method to append a new node at the end of the list
  void append(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      return;
    }
    Node current = head!;
    while (current.next != null) {
      current = current.next!;
    }
    current.next = newNode;
  }

  // Method to remove all occurrences of a specific element
  void removeAllOccurrences(int target) {
    // Remove target elements at the head of the list
    while (head != null && head!.value == target) {
      head = head!.next;
    }

    Node? current = head;

    // Traverse the list and skip nodes with the target value
    while (current != null && current.next != null) {
      if (current.next!.value == target) {
        current.next = current.next!.next; // Skip the target node
      } else {
        current = current.next; // Move to the next node
      }
    }
  }

  // Method to print the linked list
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  LinkedList ll = LinkedList();
  ll.append(1);
  ll.append(2);
  ll.append(3);
  ll.append(2);
  ll.append(4);
  ll.append(2);

  print('Original list:');
  ll.printList();
  print('enter a number (1-9):');
  int target ;  
  target = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
  ll.removeAllOccurrences(target);

  print('\nList after removing all occurrences of $target:');
  ll.printList();
}
