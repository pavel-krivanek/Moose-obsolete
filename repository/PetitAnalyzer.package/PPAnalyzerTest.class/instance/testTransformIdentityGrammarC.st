testing-transform
testTransformIdentityGrammarC
	| orig tran |
	orig := self grammarC.
	tran := orig transform: [ :each | each ].
	self deny: orig == tran.
	self deny: orig children first == tran children first.
	self deny: orig children first children first == tran children first children first.
	self deny: orig children first children last == tran children first children last.
	self deny: orig children last == tran children last.
	
	self assert: orig class == PPChoiceParser.
	self assert: orig children first class == PPSequenceParser.
	self assert: orig children first children first == orig.
	self assert: orig children first children last == orig.
	self assert: orig children last class == PPLiteralObjectParser.

	self assert: tran class == PPChoiceParser.
	self assert: tran children first class == PPSequenceParser.
	self assert: tran children first children first == tran.
	self assert: tran children first children last == tran.
	self assert: tran children last class == PPLiteralObjectParser