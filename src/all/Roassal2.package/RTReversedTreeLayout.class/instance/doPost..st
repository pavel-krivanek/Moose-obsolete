hook
doPost: elements
	| g hauteur |
	g := elements asGroup.
	edges do: [ :edge | edge shape attachPoint: (RTShorterVerticalDistanceAttachPoint new ) ].
	hauteur := g extent y.
	elements do: [ :el | el translateTo: el position x @ (hauteur - el position y) ].
