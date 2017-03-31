hook
doPost: elements
	| g largeur |
	g := elements asGroup.
	edges do: [ :edge | edge shape attachPoint: (RTShorterHorizontalDistanceAttachPoint new ) ].
	largeur := g extent x.
	elements do: [ :el | el translateTo: (largeur - el position x) @ el position y ].
