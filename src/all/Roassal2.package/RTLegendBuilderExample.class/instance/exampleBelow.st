sources
exampleBelow

	|  lb b |
	b := RTMondrian new.
	b shape rectangle
		width: [ :c | c numberOfVariables * 5 ];
		height: #numberOfMethods.
	b nodes: RTShape withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout tree.
	b normalizer
		normalizeColor: #numberOfLinesOfCode using: (Array with: Color black with: Color red ) using: [:vv | (vv + 1) ln * 5 ] .
	b build.

	lb := RTLegendBuilder new.
	lb view: b view.

	lb addText: 'System complexity view'.
	lb addRectanglePolymetricWidth: 'number of methods' height: 'Line of code' box: 'a Pharo class'.
	lb addColorFadingFrom: Color black to: Color red text: 'number of lines of code'.
	lb build.

	^ b view