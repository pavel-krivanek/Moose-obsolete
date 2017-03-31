as yet unclassified
adaptToNumber: rcvr andSend: selector

	selector = #< ifTrue:[
		self positive 
		ifTrue: [ ^ true ]
		ifFalse: [ ^false ].
		].
	selector = #> ifTrue: [
		self positive 
		ifTrue: [ ^ false ]
		ifFalse: [ ^true ].
		].