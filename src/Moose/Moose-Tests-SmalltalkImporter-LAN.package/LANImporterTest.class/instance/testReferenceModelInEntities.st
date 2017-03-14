tests
testReferenceModelInEntities 
	"self debug: #testReferenceModelInEntities"
	
	self model entities 
		do: [:each | self assert: each mooseModel == self model]