as yet unclassified
assertResult: expectedResult
	self assert: expectedResult = result.
	
"
	(TextDiffBuilder from: result to: expectedResult) buildDisplayPatch.
"