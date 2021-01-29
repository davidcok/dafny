module Test {
  type {:extern "predefined"} container<A>

  datatype Node = Leaf | Node(children: container<Node>)

  method Test(node: Node)
  requires node.Node?
  {
    var Node(children) := node; // <- offending line
  }
}

