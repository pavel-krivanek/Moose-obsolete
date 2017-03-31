public
createLayersFor: aClass on: view
	| implementationLayer initializationLayer attributeLayer methodShape accessorLayer layers attributeShape publicLayer |
	methodShape := RTBox new
		borderColor: Color gray;
		color: [ :each | each classBlueprintFillColor ];
		width: [ :x | x numberOfOutgoingInvocations max: 5 ];
		height: [ :x | x numberOfLinesOfCode max: 5 ].
	attributeShape := RTBox new
		borderColor: Color gray;
		color: Color lightBlue.
	initializationLayer := self
		view: aClass initializers
		withShape: methodShape
		inLayerNamed: 'Initializers'
		fromClass: aClass
		inView: view.
	publicLayer := self
		view: aClass interfaceMethods
		withShape: methodShape
		inLayerNamed: 'Interface methods'
		fromClass: aClass
		inView: view.
	implementationLayer := self
		view: aClass implementationMethods
		withShape: methodShape
		inLayerNamed: 'Implementation methods'
		fromClass: aClass
		inView: view.
	accessorLayer := self
		view: aClass accessorMethods
		withShape: methodShape
		inLayerNamed: 'Accessors'
		fromClass: aClass
		inView: view.
	attributeLayer := self
		view: aClass attributes
		withShape: attributeShape
		inLayerNamed: 'Attributes'
		fromClass: aClass
		inView: view.
	layers := {initializationLayer.
	publicLayer.
	implementationLayer.
	accessorLayer.
	attributeLayer}.
	^ layers