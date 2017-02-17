removing
testRemovingWithNested
	| b |
	b := RTMondrian new.
	b node: 1 forIt: [ b node: 2 ].
	b build.
	self assert: b view numberOfElements equals: 2.
	(b view elementFromModel: 1) removeWithNestedElements.
	self assert: b view numberOfElements equals: 0.	