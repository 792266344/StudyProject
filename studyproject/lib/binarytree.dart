class BinaryTree<T> {
  BinaryTreeNode _root = BinaryTreeNode<T>();
  int size = 0;
  int steps = 0;
  BinaryTree();
  void add(T data) {
    BinaryTreeNode _node = _root;
    BinaryTreeNode res;
    int _steps = 0;bool _left=false;
    if (_root.data == null)
      _root.data = data;
    else {
      while (true) {
        if(_node.data>data){
          if(_node.leftchild==null){
            res=_node;_left=true;break;
          }else _node=_node.leftchild;
        }else{
          if(_node.rightchild==null){
            res=_node;_left=false;break;
          }else _node=_node.rightchild;
        }
      }
      BinaryTreeNode n=BinaryTreeNode(data: data);
      _left?res.leftchild=n:res.rightchild=n;
    }
    steps = _steps + 1;
    size++;
  }
}

class BinaryTreeNode<T> {
  T data;
  BinaryTreeNode leftchild;
  BinaryTreeNode rightchild;
  BinaryTreeNode({this.data, this.leftchild, this.rightchild});
}
