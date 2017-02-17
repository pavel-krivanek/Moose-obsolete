tests
testAttributeAtput
	"
	self debug: #testAttributeAtput
	"

	| g |
	g := RTGroup new.
	g attributeAt: #foo put: 10.
	self assert: (g attributeAt: #foo ifAbsent: [20]) equals: 10.
	self assert: (g hasAttribute: #foo)