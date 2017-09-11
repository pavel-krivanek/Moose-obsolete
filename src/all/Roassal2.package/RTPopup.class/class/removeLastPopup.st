lastPopup
removeLastPopup
	self lastPopup ifNil: [ ^ self ].
	self lastPopup do: [ :e | 
		((e notNil and: [ e isNumber not])and: [ e view notNil ]) ifTrue: [ e remove ] ].

	self resetLastPopup