testing-transform
testTransformIdentityGrammarE
	| orig tran |
	orig := self grammarE.
	tran := orig transform: [ :each | each ].
	self deny: orig == tran.
	self deny: orig children first = tran children first.
	
	self assert: orig class == PPDelegateParser.
	self assert: orig children first == orig.
	
	self assert: tran class == PPDelegateParser.
	self assert: tran children first == tran