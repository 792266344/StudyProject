///抽象工厂模式是将归属于同一领域的功能赋予一个工厂
///如下，实例化飞机和实例化飞机轮子都属于飞机，所以都赋予飞机工厂，公交车亦同
///抽象工厂的缺点是打破了开闭原则，及对扩展开发，对修改关闭，抽象工厂模式如果要增加新的产品实例化，将会涉及到修改接口
///如下，假如现添加实例化飞机翅膀，那么就需要向 Factory 和 PlaneFactory 添加实例化翅膀方法


abstract class Car {
  String go();
}

class Bus implements Car {
  @override
  String go() {
    return '公交车开起来咯';
  }
}

class Plane implements Car {
  @override
  String go() {
    return '飞机滑翔中';
  }
}

abstract class Whell {
  String roll();
}

class BusWhell implements Whell {
  @override
  String roll() {
    return '公交车轮子';
  }
}

class PlaneWhell implements Whell {
  @override
  String roll() {
    return '飞机轮子';
  }
}

abstract class Factory{
  Car takeCar();
  Whell takeWhell();
}

class BusFactory implements Factory{
  @override
  Car takeCar() {
    return Bus();
  }

  @override
  Whell takeWhell() {
    return BusWhell();
  }

}

class PlaneFactory implements Factory{
  @override
  Car takeCar() {
    return Plane();
  }

  @override
  Whell takeWhell() {
    return PlaneWhell();
  }

}
