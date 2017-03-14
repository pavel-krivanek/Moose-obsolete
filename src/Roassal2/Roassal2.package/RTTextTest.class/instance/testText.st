as yet unclassified
testText
	| els |
	els := RTText new elementsOn: #('hello' 'world').
	self assert: els first trachelShape text equals: 'hello'.
	self assert: els second trachelShape text equals: 'world'