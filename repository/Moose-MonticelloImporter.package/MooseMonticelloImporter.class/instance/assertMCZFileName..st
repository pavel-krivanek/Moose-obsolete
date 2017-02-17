assertion
assertMCZFileName: mczFilename
	"a mcz file name should ends with '.mcz' and include a $-"
	
	self assert: [ (mczFilename includes: $. ) ].
	self assert: [ mczFilename first isUppercase ].
	self assert: [ (mczFilename endsWith: '.mcz') ].