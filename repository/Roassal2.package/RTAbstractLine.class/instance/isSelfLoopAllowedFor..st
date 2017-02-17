testing
isSelfLoopAllowedFor: anEdge
	^ anEdge from = anEdge to 
		ifTrue: [ allowSelfLoop ]
		ifFalse: [ true].