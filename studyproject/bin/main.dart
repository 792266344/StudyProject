import 'dart:ffi';

import 'package:linkedlist/designmode/buildermode.dart';
import 'package:linkedlist/designmode/prototypemode.dart';
import 'package:linkedlist/designmode/singlemode.dart';
import 'package:linkedlist/sortbinarytree.dart';
import '../lib/linkedlist.dart';

void main() {
  Employee employee = Employee('DG',23);
  Employee employee2 = employee.clone();
  employee2.age = 66;
  employee.printDetail();
  employee2.printDetail();
  // Student student = Student('DG', Course('化学'));
  // Student student2 = student.clone();
  // student2.course.courseName = '物理';
  // student.printDetail();
  // student2.printDetail();
}
