*Famix-Smalltalk
isSUnitTestCase
	self allSuperclassesDo: [:each | each name = 'TestCase' ifTrue: [^ true] ].
	^ false