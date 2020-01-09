import '../lib/linkedlist.dart';

main() {
  LinkedList linkedList=LinkedList<int>();
  linkedList.add(1);
  linkedList.add(2);
  linkedList.add(3);
  linkedList.add(4);
  print(linkedList.toString());
  linkedList.remove(0);
  print(linkedList.toString());
}
