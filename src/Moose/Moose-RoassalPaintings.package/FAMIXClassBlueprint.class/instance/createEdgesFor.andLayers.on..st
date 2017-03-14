public
createEdgesFor: aClass andLayers: layers on: view
	| eb edges to |
	eb := RTEdgeBuilder new.
	eb view: view.
	eb shape line; color: Color lightBlue; horizontalAttachPoint.
	edges := aClass incomingAccesses flatCollect: [ :acc | eb connectFrom: acc from to:  acc to ].
	edges do: [ :each | each moveBehind: (layers flatCollect: #value) ].
	
	eb := RTEdgeBuilder new.
	eb view: view.
	eb shape line; horizontalAttachPoint.
	to := [ :each | each candidates detect: [ :c | c typeScope = aClass ] ifNone: [ nil ] ].
	edges := aClass outgoingInvocations flatCollect: [ :acc | 
				eb connectFrom: acc from to:  (to value: acc) ].
	edges do: [ :each | each moveBehind: (layers flatCollect: #value) ]
