as yet unclassified
parse: input rule: rule to: expectedResult
	self parse: input rule: rule.
	self assert: expectedResult = result.
	
"
	(TextDiffBuilder from: result to: expectedResult) buildDisplayPatch.
"