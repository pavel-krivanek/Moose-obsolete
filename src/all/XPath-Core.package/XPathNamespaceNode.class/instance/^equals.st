comparing
= anObject
	"This is needed because namespace nodes aren't part of DOM trees
	and are created dynamically by XPath, so unless = is defined the union
	of two node sets could contain duplicate nodes for the same element
	namespace"

	self == anObject
		ifTrue: [^ true].

	self class == anObject class
		ifFalse: [^ false].

	"different elements don't share namespace nodes with the same name/uri
	according to the spec"
	^ self element = anObject element
		and: [self name = anObject name
			and: [self uri = anObject uri]].