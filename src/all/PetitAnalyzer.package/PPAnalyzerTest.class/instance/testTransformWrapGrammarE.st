testing-transform
testTransformWrapGrammarE
	| orig tran |
	orig := self grammarE.
	tran := orig transform: [ :each | each memoized ].
	
	self assert: orig class == PPDelegateParser.
	self assert: orig children first == orig.
	
	self assert: tran class == PPMemoizedParser.
	self assert: tran children first class == PPDelegateParser.
	self assert: tran children first children first == tran