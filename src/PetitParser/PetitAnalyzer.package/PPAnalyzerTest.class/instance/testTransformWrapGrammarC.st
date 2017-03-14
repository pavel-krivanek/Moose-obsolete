testing-transform
testTransformWrapGrammarC
	| orig tran |
	orig := self grammarC.
	tran := orig transform: [ :each | each memoized ].

	self assert: orig class == PPChoiceParser.
	self assert: orig children first class == PPSequenceParser.
	self assert: orig children first children first == orig.
	self assert: orig children first children last == orig.
	self assert: orig children last class == PPLiteralObjectParser.
	
	self assert: tran class == PPMemoizedParser.
	self assert: tran children first class == PPChoiceParser.
	self assert: tran children first children first class == PPMemoizedParser.
	self assert: tran children first children first children first class == PPSequenceParser.
	self assert: tran children first children first children first children first == tran.
	self assert: tran children first children first children first children last == tran.
	self assert: tran children first children last class == PPMemoizedParser.
	self assert: tran children first children last children first class == PPLiteralObjectParser