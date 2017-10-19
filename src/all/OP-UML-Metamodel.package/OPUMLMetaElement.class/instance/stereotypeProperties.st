GTInspector - extensions
stereotypeProperties
	| props |
	props := OrderedCollection new.
	^ self appliedStereotypes
		flatCollect: [ :stereo | 
			(stereo ownedAttributes reject: [ :each | each name beginsWith: 'base_' ])
				collect: [ :each | 
					{each name.
					stereo.
					stereo tags at: each name ifAbsent: [ each defaultValue value ]} ] ]