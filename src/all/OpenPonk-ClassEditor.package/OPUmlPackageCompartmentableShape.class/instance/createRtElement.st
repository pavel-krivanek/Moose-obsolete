Roassal2 - manipulation
createRtElement
	| shape |
	shape := OPUmlPackageShape on: self.
	shape style: self style.
	shape shape
		color: [ :model | model style fillColor ];
		borderColor: self style strokeColor;
		borderWidth: self style strokeWidth.
	shape labelText: [ :model | model modelElement name ].
	shape
		stereotypeText: [ :model | 
			(model modelElement isKindOf: OPUMLProfile)
				ifTrue: [ '«profile»' ]
				ifFalse: [ '' ] ].
	shape showTriangle: [ :model | model modelElement isKindOf: OPUMLModel ].
	^ shape