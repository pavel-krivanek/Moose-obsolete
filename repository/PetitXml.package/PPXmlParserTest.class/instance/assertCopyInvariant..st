utilities
assertCopyInvariant: aNode
	"Assert that the copy is equivalent to the original."
	
	| copy |
	copy := aNode copy.
	self deny: aNode == copy.
	self assert: aNode = copy.
	self assert: copy = aNode