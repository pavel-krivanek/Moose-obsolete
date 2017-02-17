ui
gtInspectorPropertiesIn: composite
	<gtInspectorPresentationOrder: 5>
	^ composite table
		title: 'Properties';
		display: [ self properties sorted: [:x :y | x fullName < y fullName] ];
		column: 'Name' evaluated: [ :each | each gtDisplayString ] tags: [ :each | 
					each package isNil
						ifTrue: [ #() ]
						ifFalse: [ each package name ] ];
		column: 'Type' evaluated: [ :each | each gtTypeString ];
		morphicSelectionAct: [ :list | list selection implementingClass browse ] 
							icon: GLMUIThemeExtraIcons glamorousBrowse 
							on: $b
							entitled: 'Browse implementation'