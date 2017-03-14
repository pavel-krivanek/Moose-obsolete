tests
testPoolVariablesAreReified
	"self debug: #testPoolVariablesAreReified"

	| poolVar |
	poolVar := self model entityNamed: #'Smalltalk::LANPool.LANEditor'.
	self assert: poolVar parentType name equals: #LANPool