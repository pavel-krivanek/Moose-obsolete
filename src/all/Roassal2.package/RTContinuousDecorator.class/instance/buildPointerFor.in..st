public
buildPointerFor: x in: g
	self datasets do: [ :ds | | e xx | 
		xx := ds getValuesX.
		(x between: xx first and: xx last)  
			ifTrue: [ 
				e := (self iconAt: ds) elementOn: ds->x.
				e translateTo: (builder getPixelPositionOf: (self 
					calculatePointFor: ds and: x)).
				g add: e ].
		].