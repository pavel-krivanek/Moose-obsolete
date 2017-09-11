public
on: elementOrElements thenDo: aBlock
	| els temp |
	els := elementOrElements.
	els isCollection 
		ifFalse: [ els := Array with: els ].
	temp := self setAttachPoint: els.
	aBlock value: temp.
	els do: #updateConnectedEdges.
	^ temp