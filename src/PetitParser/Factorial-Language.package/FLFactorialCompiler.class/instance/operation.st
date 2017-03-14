grammar
operation
	^ super operation ==> [ :node | node = '==' ifTrue: [ #= ] ifFalse: [ node asSymbol ] ]