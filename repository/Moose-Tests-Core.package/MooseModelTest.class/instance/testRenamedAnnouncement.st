tests
testRenamedAnnouncement
	| oldName |
	model announcer when: MooseEntityRenamed do: [ :a | oldName := a oldName ].
	model name: #somename.
	self assert: oldName equals: #noname.
	model name: #anothername.
	self assert: oldName equals: #somename