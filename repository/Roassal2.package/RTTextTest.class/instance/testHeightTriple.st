as yet unclassified
testHeightTriple
	| els |
	els := RTText new
		elementsOn:
			#('hello' 'hello
world
!').
	self assert: els first height * 3 equals: els second height