rendering
aNode: aNodeSymbol color: aColor popup: aString on: aView
	aView shape rectangle withoutBorder width: 70; height: 30; fillColor: aColor.
		aView node: aNodeSymbol forIt: [
			aView interaction popupText: [:n | aString]. 
			aView shape label fillColor: aColor; fontColor: Color black.
			aView node: aNodeSymbol ].
