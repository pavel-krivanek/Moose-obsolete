tests
testExtractMethodSelectorFromMoose
	"(self selector: #testExtractMethodSelectorFromMoose) run"

	self assert: (FAMIXNameResolver extractMethodSelectorFromMoose: #'accept:node:()') equals: 'accept:node:'.
	self assert: (FAMIXNameResolver extractMethodSelectorFromMoose: #'accept()') equals: 'accept'