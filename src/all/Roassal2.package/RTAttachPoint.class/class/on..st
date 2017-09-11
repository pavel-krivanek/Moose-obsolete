public
on: elementOrElements
	| els temp |
	els := elementOrElements.
	els isCollection 
		ifFalse: [ els := Array with: els ].
	temp := self setAttachPoint: els.
	els do: #updateConnectedEdges.
	^ temp