hooks
"protocol: hooks"
initializeElement: element
	| recursiveGetChildren dragElements |
	
	dragElements := nil.
	recursiveGetChildren := nil.
	
	recursiveGetChildren := [ :elem :ancestor|
		dragElements add: elem.
		elem outgoingEdges do: [ :edge |
			(edge to = ancestor) ifFalse: [
				recursiveGetChildren value: edge to value: ancestor].
			].
		].
	
	element when: TRMouseDragging do: [ :ev |
		| d |
		dragElements := Set new.
		ev shiftKeyPressed 
			ifTrue: [dragElements add: ev element]
			ifFalse: [recursiveGetChildren value: ev element value: ev element]. 
		ev signalUpdate.
		d := element view canvas camera distanceFromPixelToSpace: ev step.
		dragElements do: [ :e1 | e1 translateBy: d ].
		]
	