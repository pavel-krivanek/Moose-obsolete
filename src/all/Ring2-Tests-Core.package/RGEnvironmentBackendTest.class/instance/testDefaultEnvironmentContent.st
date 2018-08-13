tests
testDefaultEnvironmentContent
	
	| env |
	
	env := RGEnvironment unnamed.
	
	self testDefaultContentFor: env.
	
"	self assert: env ask behaviors size equals: 12.
	self assert: env ask packages size equals: 1.
"