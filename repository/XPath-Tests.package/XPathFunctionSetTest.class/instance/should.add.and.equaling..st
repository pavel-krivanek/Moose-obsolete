asserting
should: aBlock add: aFirstObject and: aSecondObject equaling: anExpectedSum
	| firstCopy secondCopy sum |

	firstCopy := aFirstObject asXPathFunctionSet copy.
	secondCopy := aSecondObject asXPathFunctionSet copy.
	sum := aBlock value.
	self
		assert: sum = anExpectedSum;
		deny: sum == aFirstObject;
		deny: sum == aSecondObject;
		assert: firstCopy = aFirstObject asXPathFunctionSet;
		assert: secondCopy = aSecondObject asXPathFunctionSet.