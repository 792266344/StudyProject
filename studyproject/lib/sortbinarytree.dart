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
        if (_node.data > data) {
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

  bool contains(T data){
    BinaryTreeNode _node = _root;
    bool exist=false;
    while(true){
      if (_node.data > data) {
          if (_node.leftchild == null) {
            exist=false;
            break;
          } else
            _node = _node.leftchild;
        } else if(_node.data<data){
          if (_node.rightchild == null) {
            exist = false;
            break;
          } else
            _node = _node.rightchild;
        } else {
          exist=true;break;
        }
    }return exist;
  }

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
