tests
testAccessToPoolVariable
	"self debug: #testAccessToPoolVariable"

	| lanEditorAccess group |
	group := self model allAccesses select: [ :each | each variable name = 'LANEditor' ].
	self assert: group size equals: 1.
	lanEditorAccess := group first.
	self assert: lanEditorAccess accessor name equals: #accessPoolVariable.
	self assert: lanEditorAccess accessor mooseName equals: #'Smalltalk::LANNode.accessPoolVariable()'