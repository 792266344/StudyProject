typedef  quanzhong<L,R> = bool Function(L,R);

class BinaryTree<T> {
  BinaryTreeNode _root = BinaryTreeNode<T>();
  int size = 0;
  int steps = 0;

  BinaryTree();

  void add(T data) {
    BinaryTreeNode _node = _root;
    BinaryTreeNode res;
    int _steps = 0;
    bool _left = false;
    if (_root.data == null)
      _root.data = data;
    else {
      while (true) {
        if (_node.data>data) {
          if (_node.leftchild == null) {
            res = _node;
            _left = true;
            break;
          } else
            _node = _node.leftchild;
        } else {
          if (_node.rightchild == null) {
            res = _node;
            _left = false;
            break;
          } else
            _node = _node.rightchild;
        }
      }
      BinaryTreeNode n = BinaryTreeNode(data: data);
      _left ? res.leftchild = n : res.rightchild = n;
    }
    steps = _steps + 1;
    size++;
  }

  BinaryTreeNode _findNode(T data){
    BinaryTreeNode _node = _root;
    while(true){
      if (_node.data > data) {
          if (_node.leftchild == null) {
            throw Exception("The Element Doesn't Exist");
          } else
            _node = _node.leftchild;
        } else if(_node.data<data){
          if (_node.rightchild == null) {
            throw Exception("The Element Doesn't Exist");
          } else
            _node = _node.rightchild;
        } else {
          return _node;
        }
    }
  }

  bool contains(T data){
    try{
      _findNode(data);
      return true;
    }catch(e){
      return false;
    }
  }

  void delete(T data){
    BinaryTreeNode _node=_findNode(data);
    BinaryTreeNode _limit=_findMin(_node);
    _node=_limit;
    _limit=null;
    
  }

  BinaryTreeNode _findMin(BinaryTreeNode node){
    BinaryTreeNode _node=node.leftchild;
    while(true){
      if(_node==null) return null;
      if(_node.leftchild==null)return _node;
      _node=_node.leftchild;
    }
  }

  BinaryTreeNode _findMax(BinaryTreeNode node){}

  void preorder() => _preorder(_root);

  void _preorder(BinaryTreeNode node) {
    if (node.leftchild != null) _preorder(node.leftchild);
    if (node.rightchild != null) _preorder(node.rightchild);
    print(node.data);
  }

  void inorder() => _inorder(_root);

  void _inorder(BinaryTreeNode node) {
    if (node.leftchild != null) _inorder(node.leftchild);
    print(node.data);
    if (node.rightchild != null) _inorder(node.rightchild);
  }

  void postorder() => _postorder(_root);

  void _postorder(BinaryTreeNode node) {
    print(node.data);
    if (node.leftchild != null) _postorder(node.leftchild);
    if (node.rightchild != null) _postorder(node.rightchild);
  }
}

class BinaryTreeNode<T> {
  T data;
  BinaryTreeNode leftchild;
  BinaryTreeNode rightchild;
  BinaryTreeNode({this.data, this.leftchild, this.rightchild});
}
