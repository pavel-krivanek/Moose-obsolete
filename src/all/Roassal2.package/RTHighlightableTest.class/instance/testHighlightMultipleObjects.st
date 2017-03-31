tests
testHighlightMultipleObjects

	| elements view originalColor |
	elements := RTBox elementsOn: (Array with: 1 with: 2 with: 2).
	view := RTView new.
	view addAll: elements.
	
	originalColor := elements first color. 
	
	"Not necessary, but useful when debugging the test"
	RTHorizontalLineLayout on: elements.

	elements @ (RTHighlightable highlight: [ :v | Array with: v + 1 ]).
	self assert: (elements allSatisfy: [ :e | e trachelShape color = originalColor ]).
	
	elements first announce: TRMouseEnter new.
	self assert: (elements first trachelShape color = originalColor ).
	self assert: (elements second trachelShape color = RTHighlightable highlightedColor).
	self assert: (elements third trachelShape color = RTHighlightable highlightedColor).
	
	elements first announce: TRMouseLeave new.
	self assert: (elements allSatisfy: [ :e | e trachelShape color = originalColor ]).