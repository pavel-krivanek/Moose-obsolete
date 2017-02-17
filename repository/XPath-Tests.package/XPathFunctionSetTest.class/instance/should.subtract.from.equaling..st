asserting
should: aBlock subtract: aFirstObject from: aSecondObject equaling: anExpectedDifference
	| firstCopy secondCopy difference |

	firstCopy := aFirstObject asXPathFunctionSet copy.
	secondCopy := aSecondObject asXPathFunctionSet copy.
	difference := aBlock value.
	self
		assert: difference = anExpectedDifference;
		deny: difference == aFirstObject;
		deny: difference == aSecondObject;
		assert: firstCopy = aFirstObject asXPathFunctionSet;
		assert: secondCopy = aSecondObject asXPathFunctionSet.