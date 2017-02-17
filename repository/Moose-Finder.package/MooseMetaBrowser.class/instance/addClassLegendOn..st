building
addClassLegendOn: view

	| lb |
	lb := RTLegendBuilder new.
	lb onDemand.
	lb view: view.
	lb addColoredText: 'Moose and FAMIX metamodel' color: Color black.
	lb addText: 'Each box is a meta class (subclass of MooseEntity or FAMIXEntity)'.
	lb addText: 'height = number of complex attributes'.
	lb addText: 'width = number of primitive attributes'.
	lb addColor: Color blue lighter text: 'Selected metaclass'.
	lb addColor: Color lightRed text: 'Metaclass _without_ a class comment'.
	lb addColor: Color white text: 'Metaclass with a class comment'.
	lb build