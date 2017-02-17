moosequery-queries-generic
creatingDirectionSymbol: anInOutSymbol
	| directionSymbol |
	anInOutSymbol = #in
		ifTrue: [ directionSymbol := 'incoming' ]
		ifFalse: [ 
			anInOutSymbol = #out
				ifTrue: [ directionSymbol := 'outgoing' ]
				ifFalse: [ directionSymbol := nil ] ].
	^ directionSymbol