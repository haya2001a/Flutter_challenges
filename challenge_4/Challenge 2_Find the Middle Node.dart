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

  // Method to find the middle node using the slow and fast pointer approach
  Node? findMiddleNode() {
    if (head == null) {
      return null; // Empty list, no middle node
    }

    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow?.next; // Move slow pointer one step
      fast = fast.next?.next; // Move fast pointer two steps
    }

    return slow; // Slow pointer will be at the middle node
  }
}

void main() {
  LinkedList ll = LinkedList();
  ll.append(1);
  ll.append(2);
  ll.append(3);
  ll.append(4);
  ll.append(5);
  ll.append(10);

  Node? middleNode = ll.findMiddleNode();
  if (middleNode != null) {
    print('Middle node value: ${middleNode.value}');
  } else {
    print('List is empty, no middle node.');
  }
}
