sources
exampleOnDemand

	|  lb b |
	b := RTMondrian new.
	b shape rectangle
		width: [ :c | c numberOfVariables * 5 ];
		height: #numberOfMethods.
	b nodes: RTShape withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout tree.
	b normalizer
		normalizeColor: #numberOfLinesOfCode using: (Array with: Color black with: Color red).
	b build.

	lb := RTLegendBuilder new.
	lb onDemand: '+Info'.
	lb view: b view.

	lb addText: 'System complexity view'.
	lb addRectanglePolymetricWidth: 'number of methods' height: 'Line of code' box: 'a Pharo class'.
	lb build.

	^ b view