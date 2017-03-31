tests
testImportMethodComments
	self model allComments
		do: [ :eachComment | self assert: (self model entityNamed: eachComment belongsTo mooseName) isNil not ].
	self assert: (self model entityNamed: #'Smalltalk::LANInterface.accept()') comments size equals: 1.
	self assert: (self model entityNamed: #'Smalltalk::LANInterface.originate()') comments size equals: 6