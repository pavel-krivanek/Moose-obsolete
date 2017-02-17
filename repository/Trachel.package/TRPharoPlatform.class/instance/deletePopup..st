public
deletePopup: popup
	popup ifNil: [ ^ self ].
	popup do: [:e | e ifNotNil: [ e remove ] ].