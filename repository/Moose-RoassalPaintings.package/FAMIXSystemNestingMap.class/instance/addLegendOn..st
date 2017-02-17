rendering
addLegendOn: view

	| lb |
	lb := RTLegendBuilder new.
"	lb onDemand."
	lb view: view.

	lb addColoredText: 'System nesting map' color: Color black.
	lb addText: 'Show classes and their size (in number of methods)'.
	lb build.

