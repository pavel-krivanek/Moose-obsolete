metrics
ahh 
	"average hierarchy height" 

	| allHierarchies |
	allHierarchies := 
			self allClasses select: 
				[:cls | cls superclass isNil or: [ cls superclass isStub ] ].
	^ ((allHierarchies asOrderedCollection collect: #subclassHierarchyDepth) sum / allHierarchies size) asFloat 
