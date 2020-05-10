///工厂模式将实例化的功能赋予工厂，外部调用只需要实例化工厂，通过工厂获取该工厂可获得的实例
///如下，苹果工厂只能获得苹果，西瓜工厂只能获得西瓜

abstract class Fruit {
  String showMe();
}

class Apple implements Fruit {
  @override
  String showMe() {
    return '我是一个大苹果';
  }
}

class WaterMelon implements Fruit {
  @override
  String showMe() {
    return '我是一个大西瓜';
  }
}

abstract class Factory{
  Fruit takeFruit();
}

class AppleFactory implements Factory{
  @override
  Fruit takeFruit() {
    return Apple();
  }
}

class WaterMelonFactory implements Factory{
  @override
  Fruit takeFruit() {
    return WaterMelon();
  }
}
