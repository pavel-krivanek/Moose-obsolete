tests
testNewPI
	super testNewPI.

	self assert: self newFactoryWithClasses newPI class == self piClass.