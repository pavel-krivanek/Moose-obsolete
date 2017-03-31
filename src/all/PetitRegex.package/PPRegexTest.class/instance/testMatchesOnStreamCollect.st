testing-protocol
testMatchesOnStreamCollect
	| matcher |
	matcher := self matcherClass forString: '\w+'.
	self assert: (matcher 
		matchesOnStream: 'now is the time' readStream 
		collect: [ :each | each reverse ]) asArray
			= #('won' 'si' 'eht' 'emit')