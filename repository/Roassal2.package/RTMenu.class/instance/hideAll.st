hide entries
hideAll
	view canvas fixedShapes do: [ :s |
		
		(s element isKindOf: RTMenu) ifTrue: [ s element hideItems ]. ]