tests
testTagsForMethodsCollection
	
	| class env tag1 tag2 tag3 |

	class := RGClass unnamed.
	env := class environment.

	self assert: class tagsForMethods isEmpty.
	self assert: (class hasUnresolved: #tagsForMethods).
	
	tag1 := #tag1.
	class addMethodTag: #tag1.
	self assert: class tagsForMethods size equals: 1.

	self assert: (class hasResolved: #tagsForMethods).
	
	tag2 := #tag2.
	class addMethodTag: tag2.
	self assert: class tagsForMethods size equals: 2.
	
	tag3 := #tag3.
	class addMethodTag: tag3.
	self assert: class tagsForMethods size equals: 3.

	class removeMethodTag: tag3.
	self assert: class tagsForMethods size equals: 2.

	class cleanTagsForMethods.
	self assert: class tagsForMethods isEmpty.
	self assert: (class hasResolved: #tagsForMethods).
