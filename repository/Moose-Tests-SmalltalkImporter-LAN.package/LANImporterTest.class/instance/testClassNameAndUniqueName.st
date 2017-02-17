tests
testClassNameAndUniqueName
	"self debug: #testClassNameAndUniqueName"

	| mseClass |
	mseClass := self model entityNamed: LANNode mooseName.
	self assert: mseClass name equals: #LANNode.
	self
		assert: mseClass mooseName
		equals:
			(FAMIXNameResolver
				uniqueNameForClassNamed: LANNode name
				scope: (FAMIXNameResolver moosify: LANNode environment absoluteName)).
	self assert: mseClass mooseName equals: LANNode mooseName