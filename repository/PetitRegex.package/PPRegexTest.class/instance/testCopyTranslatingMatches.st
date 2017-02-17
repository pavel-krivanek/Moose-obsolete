testing-protocol
testCopyTranslatingMatches
	| matcher |
	matcher := self matcherClass forString: '\w+'.
	self assert: (matcher copy: 'now is  the   time    ' translatingMatchesUsing: [ :each | each reverse ])
		= 'won si  eht   emit    '