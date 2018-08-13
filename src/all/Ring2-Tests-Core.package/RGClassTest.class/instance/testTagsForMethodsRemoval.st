tests
testTagsForMethodsRemoval
	
	| class method1 method2 |

	class := RGClass unnamed.
	
	self assert: class tagsForMethods isEmpty.
	self assert: (class hasUnresolved: #tagsForMethods).
	
	method1 := class ensureLocalMethodNamed: #method1.
	method2 := class ensureLocalMethodNamed: #method2.
	
	self assert: class tagsForMethods isEmpty.
	self assert: (class hasResolved: #tagsForMethods).

	method1 tagWith: #tag1.
	self assert: method1 tags equals: #(#tag1).
	self assert: class tagsForMethods equals: #(#tag1).
	
	class removeMethodTag: #tag1.
	self assert: method1 tags isEmpty.
	self assert: class tagsForMethods isEmpty.
