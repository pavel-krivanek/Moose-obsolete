tests
testBasic3MultipleObjects
	| v es |
	v := RTView new.
	es := RTEllipse new + RTLabel elementsOn: #(1 2 2).
	v addAll: es.
	RTCircleLayout on: es.
	es @ (RTShowEdge new connectTo: [ :vvvv | Array with: vvvv + 1 ]).
	self assert: v numberOfEdges equals: 0.
	es first announce: TRMouseEnter.
	self assert: v numberOfEdges equals: 2.
	es first announce: TRMouseLeave.
	self assert: v numberOfEdges equals: 0