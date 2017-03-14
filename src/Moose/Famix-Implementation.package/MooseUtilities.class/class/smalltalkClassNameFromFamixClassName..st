naming conventions
smalltalkClassNameFromFamixClassName: aFAMIXName
	"Given the FAMIX2 name for a class (for a meta class or not): return the Smalltalk name."

	| isMetaclass index |
	isMetaclass := '*' , self metaclassTag match: aFAMIXName.
	
	"we check whether there is a reference to a namespace in the famix name"
	index := aFAMIXName findString: self famixNamespaceSeparator.
	index := index isZero 
				ifTrue: [1]
				ifFalse: [(aFAMIXName findString: self famixNamespaceSeparator) + self famixNamespaceSeparator size].
	^ isMetaclass
		ifTrue: [ ((aFAMIXName copyFrom: index to: ((aFAMIXName findString: self metaclassTag) -1) ), ' class') asSymbol]
		ifFalse: [ (aFAMIXName copyFrom: index to: aFAMIXName size) asSymbol ]
