accessing
root: anElement
	"replaces root element with new element"
	anElement isElement
		ifFalse: [self errorCannotHaveNonElementRoot].
	self hasChildren
		ifTrue: [self removeNodes: self elements].
	self addNode: anElement.