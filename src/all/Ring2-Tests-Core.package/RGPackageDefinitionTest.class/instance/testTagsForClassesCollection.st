testing
testTagsForClassesCollection
	
	| package env tag1 tag2 tag3 |

	package := RGPackageDefinition unnamed.
	env := package environment.

	self assert: package tagsForClasses isEmpty.
	self assert: (package hasUnresolved: #tagsForMethods).
	
	tag1 := #tag1.
	package addClassTag: #tag1.
	self assert: package tagsForClasses size equals: 1.

	self assert: (package hasResolved: #tagsForClasses).
	
	tag2 := #tag2.
	package addClassTag: tag2.
	self assert: package tagsForClasses size equals: 2.
	
	tag3 := #tag3.
	package addClassTag: tag3.
	self assert: package tagsForClasses size equals: 3.

	package removeClassTag: tag3.
	self assert: package tagsForClasses size equals: 2.

	package cleanTagsForClasses.
	self assert: package tagsForClasses isEmpty.
	self assert: (package hasResolved: #tagsForClasses).
