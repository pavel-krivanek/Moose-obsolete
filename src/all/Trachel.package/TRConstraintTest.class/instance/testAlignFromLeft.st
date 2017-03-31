aligning
testAlignFromLeft
	"
	TRCanvas new addShape: shape1; addShape: shape2; yourself
	"
	RTAlignment new elements: (Array with: shape1 with: shape2); left.
	self assert: shape1 position equals: 0 @ 0.
	self assert: shape2 position equals: -20 @ 0.