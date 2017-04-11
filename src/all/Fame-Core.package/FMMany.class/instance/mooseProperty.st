meta-object-protocol
mooseProperty

	| prop |
	
	prop := FM3PropertyDescription new.
	
	prop name: self name asString.
	prop setImplementingSelector: self name. "should be a link to slot"

	prop isMultivalued: true.
	prop isDerived: true.
	
	^ prop
	
"	(Pragma inMethod: aMethod named: #package:)
		ifNotNil: [ :p | 
			| packageName |
			packageName := p argumentAt: 1.
			(self allowPackageNamed: packageName)
				ifFalse: [ ^ self ].
			packPropDict at: prop put: packageName ]."
	"we check the package first because if we do not want to load it,
		we ignore the whole property"	