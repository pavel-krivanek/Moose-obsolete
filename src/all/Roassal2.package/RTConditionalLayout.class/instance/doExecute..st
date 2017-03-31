as yet unclassified
doExecute: elements
	| thenElements elseElements |
	thenElements := RTGroup new.
	elseElements := RTGroup new.
	elements do: [ :anElement | (condition rtValue: anElement) 
											ifTrue: [ thenElements add: anElement ] 
											ifFalse: [ elseElements add: anElement ] ].
	thenLayout on: thenElements.
	elseLayout on: elseElements.
	overallLayout on: (RTGroup with: thenElements with: elseElements)

