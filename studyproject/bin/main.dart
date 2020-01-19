import 'dart:ffi';

import 'package:linkedlist/sortbinarytree.dart';
import '../lib/linkedlist.dart';

void main() {
  BinaryTree tree=BinaryTree<int>();
  // print(tree.size);
  tree.add(5);
  tree.add(6);
  tree.add(1);
  tree.add(3);
  tree.add(8);
  print(tree.contains(0));
}
