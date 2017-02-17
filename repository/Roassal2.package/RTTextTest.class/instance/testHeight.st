as yet unclassified
testHeight
	| els |
	els := RTText new elementsOn: #('hello' 'HELLO').
	self assert: els first height equals: els second height