testing
testPostfixSub
	self assert: '1--' is: 0.
	self assert: '2----' is: 0.
	self assert: '3------' is: 0.

	self assert: '2---1' is: 0.
	self assert: '3-----1' is: 0.
	self assert: '4-------1' is: 0.