checking
numberOfReturns
	| aNum |
	aNum := 0.
"	self children do: [
		:eachChild  | (eachChild isKindOf: Return ) ifTrue: [aNum := aNum + 1]]."
	^aNum.