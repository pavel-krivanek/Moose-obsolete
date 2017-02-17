values
boolean 
	^ super boolean 
	
	==> [:token | token inputValue = 'true' ifTrue: [true] ifFalse: [token inputValue = 'false' ifTrue: [false] ifFalse: [nil]]] 