testing
similarSource: sourceString target: targetString 
	 
	^(self normalizedDistanceSource: sourceString target: targetString) <= 
			threshold