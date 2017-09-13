tests
testRemoveDetachFromEnds
	| source target  |
	source := OPUmlLabel new.
	target := OPUmlLabel new.
	element source: source.
	element target: target.
	element remove.
	self assert: source sourceEdges asArray equals: #().
	self assert: target targetEdges asArray equals: #()