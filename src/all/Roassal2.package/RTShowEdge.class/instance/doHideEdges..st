actions
doHideEdges: element
	(element attributes includesKey: #showEdges)
		ifFalse: [ ^ self ].

	(element attributes at: #showEdges) do: [ :el | el view ifNotNil: [ el remove ] ].

	element attributes removeKey: #showEdges