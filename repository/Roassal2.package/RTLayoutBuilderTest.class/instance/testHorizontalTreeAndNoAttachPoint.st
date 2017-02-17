tests - attach point
testHorizontalTreeAndNoAttachPoint

	| b edges allEdges lastTwoEdges firstEdges |
	b := RTMondrian new.
	b shape label.
	b nodes: (1 to: 10).
	edges := b edges connectFrom: [ :x | x//2 ].

	b shape arrowedLine color: Color red; centeredAttachPoint.
	b edges source: (Array with: 3->2 with: 9->7) connectFrom: #key to: #value. 

	"We test the attachpoints"
	allEdges := b view edges.
	firstEdges := allEdges copyFrom: 1 to: (allEdges size - 3).
	lastTwoEdges := allEdges copyFrom: (allEdges size - 2) to: allEdges size.
	self assert: (firstEdges allSatisfy: [ :e | e shape attachPoint class == RTCenteredAttachPoint ] ).
	self assert: (lastTwoEdges allSatisfy: [ :e | e shape attachPoint class == RTCenteredAttachPoint ]).
	 
	
	"We set a tree layout"
	b layout horizontalTree doNotAttachPoint; userDefinedEdges: edges.
	b build.
	
	"We test the attachpoints"
	allEdges := b view edges.
	lastTwoEdges := allEdges copyFrom: (allEdges size - 2) to: allEdges size.
	self assert: (firstEdges allSatisfy: [ :e | e shape attachPoint class == RTCenteredAttachPoint ] ).
	self assert: (lastTwoEdges allSatisfy: [ :e | e shape attachPoint class == RTCenteredAttachPoint ])
