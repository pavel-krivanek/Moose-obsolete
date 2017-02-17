assertion
assertPackageName: packageName
	"a package should not include a dot. It also should start with a capitalized letter"
	
	self assert: [ (packageName includes: $. ) not ].
	self assert: [ packageName first isUppercase ].
	self assert: [ (packageName endsWith: '.mcz') not ].