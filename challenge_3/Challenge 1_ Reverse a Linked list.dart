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

  
  void printReverse(Node? node) {
    if (node == null) return; 
    printReverse(node.next); 
        print(node.value); 
  }
}

void main() {
  LinkedList ll = LinkedList();
  ll.push(1);
  ll.push(2);
  ll.push(3);
  ll.push(4);

  // Print the linked list in reverse starting from the head
  ll.printReverse(ll.head);
}
