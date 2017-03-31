tests
testDefaultClassScope
	| class |
	class := FAMIXClass new.
	self assert: class typeScope == class