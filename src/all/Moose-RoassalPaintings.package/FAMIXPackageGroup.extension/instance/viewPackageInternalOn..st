*Moose-RoassalPaintings
viewPackageInternalOn: view
	| allClasses b lb |
	allClasses := self flatCollect: #allClasses.
	b := RTMondrian new.
	b view: view.
	b shape box
		fillColor: Color veryLightGray;
		withTextAbove: #name.
	b
		nodes: self
		forEach: [ :pkg | 
			b shape box
				width: [ :c | c numberOfAttributes * 3 ];
				height: #numberOfMethods;
				if: #isStub fillColor: Color lightGray.
			b interaction showEdge connectTo: [ :c | c queryAllOutgoingInvocations atScope: FAMIXType ].
			b nodes: pkg allClasses.
			b edges connectFrom: #superclass.
			b layout tree ].
	b layout flow.
	allClasses
		ifNotEmpty: [ b normalizer
				objects: allClasses;
				normalizeColor: [ :c | (c queryAllOutgoingInvocations atScope: FAMIXType) size ] ].
	b build.
	lb := RTLegendBuilder new.
	lb onDemand.
	lb view: b view.
	lb addText: 'Visualization of packages'.
	lb addRectanglePolymetricWidth: 'Number of Variables' height: 'Number of methods' box: 'Class'.
	lb build.
	^ view