testing
testTagsForClasses
	
	| package env class1 class2 |

	package := RGPackageDefinition unnamed.
	env := package environment.
	
	self assert: package tagsForClasses isEmpty.
	self assert: (package hasUnresolved: #tagsForClasses).
	
	class1 := env ensureClassNamed: #Class1.
	class2 := env ensureClassNamed: #Class2.
	
	class1 package: package.
	class2 package: package.
	
	self assert: package tagsForClasses isEmpty.
	self assert: (package hasUnresolved: #tagsForClasses).

	self assert: (package classesTaggedWith: #tag1) isEmpty.
	
	class1 tagWith: #tag1.
	self assert: class1 tags equals: #(#tag1).
	self assert: package tagsForClasses equals: #(#tag1).
	self assert: (package classesTaggedWith: #tag1) equals: {class1}.
	
	class2 tagWith: #tag1.
	self assert: class2 tags equals: #(#tag1).
	self assert: package tagsForClasses equals: #(#tag1).
	self assert: ((package classesTaggedWith: #tag1) includesAll: {class1. class2}).

	class1 tagWith: #tag2.
	self assert: class1 tags sorted equals: #(#tag1 #tag2).
	self assert: package tagsForClasses sorted equals: #(#tag1 #tag2).
	
	class1 untagFrom: #tag1.
	self assert: class1 tags equals: #(#tag2).
	self assert: package tagsForClasses sorted equals: #(#tag1 #tag2).
	self assert: ((package classesTaggedWith: #tag1) includesAll: {class2}).

	class2 tagWith: #tag3.
	self assert: class2 tags sorted equals: #(#tag1 #tag3).
	self assert: package tagsForClasses sorted equals: #(#tag1 #tag2 #tag3).

	package removeDefinedBehavior: class1.
	self assert: package tagsForClasses sorted equals: #(#tag1 #tag2 #tag3).
	package removeDefinedBehavior: class2.
	self assert: package tagsForClasses sorted equals: #(#tag1 #tag2 #tag3).

	self assert: (package classesTaggedWith: #tag1) isEmpty.
	self assert: (package classesTaggedWith: #tag2) isEmpty.
	self assert: (package classesTaggedWith: #tag3) isEmpty.
