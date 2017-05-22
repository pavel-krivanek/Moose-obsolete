private
processCompiledMethod: aMethod
	| pragma prop |
	aMethod isCompiledMethod should beTrue.
	pragma := Pragma inMethod: aMethod named: #(#MSEProperty:type:opposite: #MSEProperty:type:).
	pragma ifNil: [ ^ self ].
	prop := FM3PropertyDescription new.
	(Pragma inMethod: aMethod named: #package:)
		ifNotNil: [ :p | 
			| packageName |
			packageName := p argumentAt: 1.
			(self allowPackageNamed: packageName)
				ifFalse: [ ^ self ].
			packPropDict at: prop put: packageName ].
	"we check the package first because if we do not want to load it,
		we ignore the whole property"
	prop name: (pragma argumentAt: 1) asString.
	typeDict at: prop put: (pragma argumentAt: 2).
	mmClassDict at: prop put: aMethod methodClass.
	prop setImplementingSelector: aMethod selector.
	pragma keyword = #MSEProperty:type:opposite:
		ifTrue: [ oppositeDict at: prop put: (pragma argumentAt: 3) ].
	(Pragma inMethod: aMethod named: #container) ifNotNil: [ prop isContainer: true ].
	(Pragma inMethod: aMethod named: #derived) ifNotNil: [ prop isDerived: true ].
	(Pragma inMethod: aMethod named: #source) ifNotNil: [ prop isSource: true ].
	(Pragma inMethod: aMethod named: #target) ifNotNil: [ prop isTarget: true ].
	(Pragma inMethod: aMethod named: #multivalued)
		ifNotNil: [self
						assert: prop isContainer not
						description: 'It is not possible to have <multivalue> and <container> on the same method. container represents a aggregation UML link that is incompatible with the multivalue kind of the link' .
			prop isMultivalued: true ].
	(Pragma inMethod: aMethod named: #key:)
		ifNotNil: [ prop key: ((Pragma inMethod: aMethod named: #key:) argumentAt: 1) ].
	elements add: prop