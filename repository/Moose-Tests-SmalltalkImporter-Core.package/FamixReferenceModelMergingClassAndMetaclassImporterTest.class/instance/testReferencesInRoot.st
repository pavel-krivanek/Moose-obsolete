tests
testReferencesInRoot
	"self debug:#testReferencesInRoot "

	| theRoot |
	theRoot := self model entityNamed: #Smalltalk::TheRoot.
	self assert: (theRoot methods flatCollect: [ :each | each outgoingReferences ]) size equals: 6.
	self
		assert:
			(theRoot methods flatCollect: [ :each | each outgoingReferences select: [ :access | access to name = #Object ] ]) size
		equals: 2