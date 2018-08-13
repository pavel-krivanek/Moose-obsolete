tests
testTagsCollection
	
	| method env tag1 tag2 tag3 |

	method := RGMethod unnamed.
	env := method environment.

	self assert: method tags isEmpty.
	self assert: (method hasUnresolved: #tags).
	
	tag1 := #tag1.
	method tagWith: #tag1.
	self assert: method tags size equals: 1.

	self assert: (method hasResolved: #tags).
	
	tag2 := #tag2.
	method tagWith: tag2.
	self assert: method tags size equals: 2.
	
	tag3 := #tag3.
	method tagWith: tag3.
	self assert: method tags size equals: 3.

	method untagFrom: tag3.
	self assert: method tags size equals: 2.

	method cleanTags.
	self assert: method tags isEmpty.
	self assert: (method hasResolved: #tags).
