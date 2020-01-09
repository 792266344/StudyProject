class Node<T>{
  T data;
  Node next;
  Node(this.data,this.next);
}

class LinkedList<T>{
  Node<T> head;
  LinkedList(){
    head=Node(null,null);
  }

  void add(T data){
    Node node=head;
    while(node.next!=null){
      node=node.next;
    }
    Node newNode=Node<T>(data, null);
    node.next=newNode;
  }

  void remove(T data){
    Node node=head;
    Node before;
    while(node.data!=data){
      before=node;
      node=node.next;
      if(node==null)break;
    }
    if(node!=null)before.next=node.next;
  }

  int get length =>_length();

  int _length(){
    int length =0;
    Node node=head;
    while(node.next!=null){
      node=node.next;
      ++length;
    }
    return length;
  }

  @override
  String toString(){
    Node node=head;
    StringBuffer result=StringBuffer();
    while(node.next!=null){
      node=node.next;
      result.write(node.data.toString()+',');
    }
    return result.toString();
  }
}