tests
testRemoveGlobals
	context globalAt: #foo put: #zorg.
	context globalAt: #bar put: #qwark.	

	self assert: (context removeGlobal: #foo) = #zorg.
	self assert: (context removeGlobal: #bar) = #qwark.
	
	self should: [context removeGlobal: #foo] raise: Error.
	self assert: (context removeGlobal: #bar ifAbsent: [ #foobar ]) = #foobar.
