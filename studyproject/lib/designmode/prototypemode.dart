///原型模式有三个角色
/// client 客户端
/// prototype 抽象原型角色，抽象类或者接口，生命 clone 方法
/// MyPrototype 具体的原型类，是客户端需要的角色，即要被复制的角色
/// 浅拷贝 只拷贝值对象和引用对象的地址
/// 深拷贝 需要将引用对象的整体数据拷贝过来，java-Cloneable 自带的 clone 方法只支持浅拷贝
/// ```
/// 浅拷贝
/// Employee employee = Employee('DG',23);
/// Employee employee2 = employee.clone();
/// employee.printDetail();
/// employee2.printDetail();
/// 
/// 
/// ```
/// ```
/// 引用对象的浅拷贝
/// Student student = Student('DG', Course('化学'));
/// Student student2 = student.clone();
/// student2.course.courseName = '物理';
/// student.printDetail();
/// student2.printDetail();
/// 
/// 姓名:DG
/// 课程:物理
/// 姓名:DG
/// 课程:物理
/// ```

abstract class Cloneable extends Object {
  //这里有问题 clone 是要用二进制流拷贝的，这里其实只是返回了之前的对象，并不是拷贝
  Object clone() => this;
}

class Employee extends Cloneable {
  String name;
  int age;
  Employee(this.name, this.age);

  void printDetail() {
    print('姓名:$name');
    print('年龄:$age');
  }
}

class Student extends Cloneable {
  String name;
  Course course;
  Student(this.name,this.course);

  void printDetail(){
    print('姓名:$name');
    print('课程:${course.courseName}');
  }

  //深拷贝需要重写 clone 方法
  @override
  Student clone(){
    Student student = this.clone();
    student.course = this.course.clone();
    return student;
  }
}

class Course extends Cloneable {
  String courseName;
  Course(this.courseName);
}
