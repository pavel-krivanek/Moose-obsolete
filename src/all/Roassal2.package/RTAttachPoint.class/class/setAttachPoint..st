public
setAttachPoint: els
	| temp shapes |
	temp := self new.
	shapes := els flatCollectAsSet: [ :e | 
		e connectedEdges collect: [ :ed | ed shape ] ].
	shapes do: [ :s |
		s attachPoint: temp ].
	^ temp