public
run
	| answer |
	self description notEmpty ifTrue: [ 
		answer := UIManager default
			confirm: self description
			label:
				self configurationMessage , self label , '?'.
		answer ifNil: [ ^ self ].
		answer
			ifTrue: [ self execute ]
	] ifFalse: [ self execute ]
	