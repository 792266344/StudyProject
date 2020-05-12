///建造者模式和抽象工厂模式相比，建造者模式关注的一个产品的组装方案，而工厂模式关注的是一类商品的生产方案
///例如，一种飞机的制造每个部件可以使用不一样的规格，不一样的组装流程，所以使用建造者模式将这些规格和流程包装起来，结果还是同一个飞机
///一类飞机有不同的组装流程，所以用不同的工厂去生产，最终的飞机确是不一样的
///建造者模式有四个角色
///builder 抽象的建造者。非必须
///MyBuilder 具体的建造者
///Product 具体的产品类
///Director 指挥者，指挥具体的建造者建造产品，非必须
///```
///使用指挥者
///Builder builder = PlaneBuilder();
///Director director = Director(builder);
///Plane plane = director.getPlane('head', 'body', 'wing', 'wheel');
///plane.showPlane();
///```
///```
///不使用指挥者，自定义 build 顺序
///Builder builder = PlaneBuilder();
///builder
///  ..buildBody('body1')
///  ..buildHead('head1')
///  ..buildWheel('wheel1')
///  ..buildWing('wing1');
///Plane plane = builder.getPlane();
///plane.showPlane();
///```

///Product产品类
class Plane {
  String head;
  String body;
  String wing;
  String wheel;

  void showPlane() {
    print('机头:$head');
    print('机身:$body');
    print('机翼:$wing');
    print('轮子:$wheel');
  }
}

//抽象建造类
abstract class Builder{
  void buildHead(String head);
  void buildBody(String body);
  void buildWing(String wing);
  void buildWheel(String wheel);

  Plane getPlane();
}

///具体建造类
class PlaneBuilder extends Builder {
  Plane _plane = Plane();
  @override
  void buildBody(String body) => _plane.body = body;

  @override
  void buildHead(String head)  => _plane.head = head;

  @override
  void buildWheel(String wheel)   => _plane.wheel = wheel;

  @override
  void buildWing(String wing)  => _plane.wing = wing;
  @override
  Plane getPlane() => _plane;
}

///指挥者
class Director{
  Builder _builder;

  Director(this._builder);

  Plane getPlane(String head,String body,String wing,String wheel){
    _builder.buildHead(head);
    _builder.buildBody(body);
    _builder.buildWing(wing);
    _builder.buildWheel(wheel);
    return _builder.getPlane();
  }
}
