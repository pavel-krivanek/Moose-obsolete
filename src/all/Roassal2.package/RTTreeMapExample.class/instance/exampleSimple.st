sources
exampleSimple
	| b labels |
	b := RTTreeMapBuilder new.
	labels := #('uno' 'dos' 'tres' 'cuatro' 'cinco' 'cent mille').
	b shape fillColor: Color veryLightGray.
	b from: labels using: [ #() ].
	b weight: [ :n | n size ].
	b build.
	b view elements
		@
			(RTLabeled new
				color: Color black;
				setAsShouldBeInTheFront;
				center).
	^ b view