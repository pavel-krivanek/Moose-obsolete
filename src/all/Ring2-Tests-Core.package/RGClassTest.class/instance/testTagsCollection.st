tests
testTagsCollection
	
	| class env tag1 tag2 tag3 |

	class := RGClass unnamed.
	env := class environment.

	self assert: class tags isEmpty.
	self assert: (class hasUnresolved: #tags).
	
	tag1 := #tag1.
	class tagWith: #tag1.
	self assert: class tags size equals: 1.

	self assert: (class hasResolved: #tags).
	
	tag2 := #tag2.
	class tagWith: tag2.
	self assert: class tags size equals: 2.
	
	tag3 := #tag3.
	class tagWith: tag3.
	self assert: class tags size equals: 3.

	class untagFrom: tag3.
	self assert: class tags size equals: 2.

	class cleanTags.
	self assert: class tags isEmpty.
	self assert: (class hasResolved: #tags).
