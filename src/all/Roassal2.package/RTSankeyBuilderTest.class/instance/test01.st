tests
test01
	"basic"
	| b |
	b := RTSankeyBuilder new.
	self assert: b extent equals: 400@300.
	self assert: b shape shape class equals: RTBox.
	self assert: b nodePadding equals: 0.
	
	self assert: b interaction numberOfInteractions equals: 1.
	self assert: b interactionEdge numberOfInteractions equals: 0.
	self assert: b lineShape shape class equals: RTBezier4Line.
	
	^ b