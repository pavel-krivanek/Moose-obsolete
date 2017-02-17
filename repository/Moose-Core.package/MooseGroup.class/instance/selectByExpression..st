public interface
selectByExpression: anExpression 
	^ self select: anExpression 
"	| resultCollection | 
	resultCollection := self entities select: [:each | anExpression value: each value: self]. 
	^self species 
		withAll: resultCollection 
		withDescription: 
			self description , ' selected by ' , anExpression printString"