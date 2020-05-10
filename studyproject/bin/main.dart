import 'dart:ffi';

import 'package:linkedlist/designmode/abstractfactorymode.dart';
import 'package:linkedlist/sortbinarytree.dart';
import '../lib/linkedlist.dart';

void main() {
  Factory f = PlaneFactory();
  Car bus = f.takeCar();
  Whell whell = f.takeWhell();
  print(bus.go());
  print(whell.roll());
}
