lastPopup
removeLastPopup
	self lastPopup ifNil: [ ^ self ].
	self lastPopup do: [ :e | 
		(e notNil and: [ e view notNil ]) ifTrue: [ e remove ] ].
"	 self lastPopup first ifNil: [ ^ self ].
    self lastPopup first view isNotNil ifTrue: [ self lastPopup do: [ :el | el view ifNotNil: [ el remove ] ] ]."
	self resetLastPopup