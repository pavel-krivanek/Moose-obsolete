*Moose-RoassalPaintings
addSystemComplexityLegendOn: view

	| lb |
	lb := RTLegendBuilder new.
	lb onDemand.
	lb view: view.

	lb addColoredText: 'System complexity view' color: Color black.
	lb addText: 'box = class'.
	lb addText: 'line = inheritance (superclass is above subclasses)'.
	lb addRectanglePolymetricWidth: 'number of attributes' height: 'number of methods' box: 'a class'.
	lb addColorFadingFrom: Color white to: Color black text: 'Number of lines of code (white = few, black = a lot)'.
	lb build.