class Node {
  int value;
  Node? next;

  Node(this.value, [this.next]);
}

class LinkedList {
  Node? head;
  void push(int value) {
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

    void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? next = null;

    while (current != null) {
      next = current.next;  
      current.next = prev;  
      prev = current;       
      current = next;
    }

    head = prev;  
  }

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
  ll.push(1);
  ll.push(2);
  ll.push(3);
  ll.push(4);
  ll.push(5);

  print('Original list:');
  ll.printList();

  ll.reverse();

  print('\nReversed list:');
  ll.printList();
}
