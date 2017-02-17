tests
testCommentClass
	super testCommentClass.

	self assert: self newFactoryWithClasses commentClass == self commentClass.