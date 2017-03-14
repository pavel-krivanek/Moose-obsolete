ui
gtInspectorClassesIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite fastList
		title: 'Classes';
		display: [ self classes sorted: [:x :y | x fullName < y fullName] ];
		format: [ :each | 
			each isAbstract 
				ifTrue: [ Text string: each fullName attribute: TextEmphasis italic ]
				ifFalse: [ Text fromString: each fullName ] ]