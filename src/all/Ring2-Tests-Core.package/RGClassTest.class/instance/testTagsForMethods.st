tests
testTagsForMethods
	
	| class method1 method2 |

	class := RGClass unnamed.
	
	self assert: class tagsForMethods isEmpty.
	self assert: (class hasUnresolved: #tagsForMethods).
	
	method1 := class ensureLocalMethodNamed: #method1.
	method2 := class ensureLocalMethodNamed: #method2.
	
	self assert: class tagsForMethods isEmpty.
	self assert: (class hasResolved: #tagsForMethods).

	self assert: (class methodsTaggedWith: #tag1) isEmpty.
	
	method1 tagWith: #tag1.
	self assert: method1 tags equals: #(#tag1).
	self assert: class tagsForMethods equals: #(#tag1).
	self assert: (class methodsTaggedWith: #tag1) equals: {method1}.
	
	method2 tagWith: #tag1.
	self assert: method2 tags equals: #(#tag1).
	self assert: class tagsForMethods equals: #(#tag1).
	self assert: ((class methodsTaggedWith: #tag1) includesAll: {method1. method2}).

	method1 tagWith: #tag2.
	self assert: method1 tags sorted equals: #(#tag1 #tag2).
	self assert: class tagsForMethods sorted equals: #(#tag1 #tag2).
	
	method1 untagFrom: #tag1.
	self assert: method1 tags equals: #(#tag2).
	self assert: class tagsForMethods sorted equals: #(#tag1 #tag2).
	self assert: ((class methodsTaggedWith: #tag1) includesAll: {method2}).

	method2 tagWith: #tag3.
	self assert: method2 tags sorted equals: #(#tag1 #tag3).
	self assert: class tagsForMethods sorted equals: #(#tag1 #tag2 #tag3).

	class removeLocalMethod: method1.
	self assert: class tagsForMethods sorted equals: #(#tag1 #tag2 #tag3).
	class removeLocalMethod: method2.
	self assert: class tagsForMethods sorted equals: #(#tag1 #tag2 #tag3).

	self assert: (class methodsTaggedWith: #tag1) isEmpty.
	self assert: (class methodsTaggedWith: #tag2) isEmpty.
	self assert: (class methodsTaggedWith: #tag3) isEmpty.
