private
validateUnprefixedName: aName
	"catch names like ':name' with an empty prefix"
	(aName size > 0
		and: [(aName at: 1) == $:])
		ifTrue: [self errorInvalidUnprefixedName: aName]