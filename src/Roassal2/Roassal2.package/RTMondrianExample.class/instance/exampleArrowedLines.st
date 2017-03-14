sources
exampleArrowedLines

	| b |
	b := RTMondrian new.

	b shape circle size: 30.
	b nodes: (RTShape withAllSubclasses).

	b shape arrowedLine withShorterDistanceAttachPoint.
	b edgesFrom: #superclass.
	b layout forceWithCharge: -500.
	b build.
	^ b view