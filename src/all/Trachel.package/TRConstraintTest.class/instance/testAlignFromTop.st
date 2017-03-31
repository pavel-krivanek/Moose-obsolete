aligning
testAlignFromTop
	"
	TRCanvas new addShape: shape1; addShape: shape2; yourself
	self debug: #testAlignFromTop
	"
	"TRConstraint alignFromTop: (Array with: shape1 with: shape2)."
	RTAlignment new elements: (Array with: shape1 with: shape2); top.
	self assert: shape1 position equals: 0 @ 0.
	self assert: shape2 position equals: 0 @ -20.