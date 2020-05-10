///```
///print(King.getKing().kingName());
///```


class King {
  static String _kingName;
  //私有化构造函数，使其无法通过外部实例化
  King._();
  //饿汉模式在类加载时便实例化，饥汉在使用时再实例化
  static King _king = King._create('嬴政');

  String kingName() => _kingName;

  //私有构造函数，只能内部访问
  King._create(String name) {
    _kingName = name;
  }

  static King getKing() {
    if (_king == null) {
      _king = King._create('嬴政');
    }
    return _king;
  }
}
