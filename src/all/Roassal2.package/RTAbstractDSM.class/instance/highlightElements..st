highlighting
highlightElements: someElements
	(someElements select: [ :e | selectElement rtValue: e ]) do: [ :e | | shapes |
		shapes := e trachelShape class = TRCompositeShape 
			ifTrue: [ e trachelShape shapes ]
			ifFalse: [ Array with: e trachelShape ].
		shapes do: [ :s | s color: (s color alpha: self transparencyWhenHighlighted) ] ].