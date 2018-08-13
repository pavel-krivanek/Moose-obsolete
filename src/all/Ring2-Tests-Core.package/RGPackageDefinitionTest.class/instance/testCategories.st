testing
testCategories
	
	| package env class1 class2 |

	package := RGPackageDefinition named: 'SomePackage'.
	env := package environment.
		
	class1 := env ensureClassNamed: #Class1.
	class2 := env ensureClassNamed: #Class2.
	
	class1 package: package.
	class2 package: package.
	
	self assert: (package categories asArray = #('SomePackage')).
	
	class1 tagWith: #tag1.
	class2 tagWith: #tag1.
	
	self assert: (package categories asArray sorted = #('SomePackage-tag1')).
	
	class2 untagFrom: #tag1.
	class2 tagWith: #tag2.

	self assert: (package categories asArray sorted = #('SomePackage-tag1' 'SomePackage-tag2')).
