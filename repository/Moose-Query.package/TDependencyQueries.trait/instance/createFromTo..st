moosequery-queries-generic
createFromTo: anInOutSymbol
	| fromTo  |

	anInOutSymbol = #in
		ifTrue: [ fromTo := #from ]
		ifFalse: [ 
			anInOutSymbol = #out
				ifTrue: [ fromTo := #to ] ].
	^ fromTo