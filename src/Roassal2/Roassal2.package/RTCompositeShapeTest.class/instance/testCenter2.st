centering
testCenter2
	| v es shape |
	v := RTView new. 
	shape := RTCompositeShape new.
	shape add: (RTBox new height: 10; color: Color green; width: #yourself).
	shape add: (RTBox new height: 10; color: Color red; width: [ :cc | 100 - cc ]).
	shape horizontal.
	
	es := shape elementsOn: #(0 50 100).
	v addAll: es.
	
	"Ideally, we should have 0 @ 0"
	self assert: es first position equals: 50 @ 0.
	self assert: es second position equals: 25 @ 0.
	self assert: es third position equals: 0 @ 0.
