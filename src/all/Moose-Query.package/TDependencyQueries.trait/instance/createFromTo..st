moosequery-queries-generic
createFromTo: anInOutSymbol
	self
		deprecated:
			'CyrilFerlicot 25/04/2017: I think this method is not used anymore. If I am wrong the senders should be changed to use a MooseQueryAbstractDirectionStrategy. You''ll have to implement a new method on it and it will use dispatch instead of condition.'.
	^ anInOutSymbol = #in
		ifTrue: [ #from ]
		ifFalse: [ anInOutSymbol = #out
				ifTrue: [ #to ] ]