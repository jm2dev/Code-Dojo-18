chai.should()

myGraph = 
  nodes: [],
  lengz: -> @nodes.length

nodeA = 
  value: "A",
  children: [nodeB]

nodeB =
  value: "B",
  children: [nodeA]

oneNodeGraph = 
  nodes: [nodeA],
  lengz: -> @nodes.length
  
twoNodesGraph = 
  nodes: [nodeA, nodeB],
  lengz: -> @nodes.length

describe 'A graph', ->

  describe 'A graph of zero nodes', ->
           
    it 'should have length zero', ->        
      myGraph.lengz().should.equal 0

    it 'should have no nodes', ->
      myGraph.nodes.length.should.equal 0
 
  describe 'A graph of one nodes', ->

    it 'should have length one', ->        
      oneNodeGraph.lengz().should.equal 1

    it 'should have one node', ->
      oneNodeGraph.nodes.length.should.equal 1

  describe 'A graph of two nodes', ->    

    it 'should have one children', ->
      nodeA.children.length.should.equal 1

    it 'should have one children', ->
      nodeB.children.length.should.equal 1
 
    it 'should have two nodes', ->
      twoNodesGraph.lengz().should.equal 2

  describe 'A node', ->
    node = 
      value: "label",
      children: []

    it 'should have a value', ->
      node.value.should.equal "label"

    it 'should have zero children', ->
      node.children.length.should.equal 0



    