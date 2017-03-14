private
hierarchyIn: a
	^ (a tree)
		title: 'Entities';
		display: [ :all | (all classes select: [ :each | each superclass = FM3 object ]) sorted: [:x :y | x fullName < y fullName] ];
		children: [ :c | c subclasses sorted: [:x :y | x fullName < y fullName] ];
		format: [ :each | self abstractFormattedNameOf: each ];
		tags: [ :each | 
					each package isNil
						ifTrue: [ #() ]
						ifFalse: [ each package name ] ];
		morphicSelectionAct: [ :list | list selection implementingClass browse ] 
							icon: GLMUIThemeExtraIcons glamorousBrowse 
							on: $b
							entitled: 'Browse implementation';
		morphicSelectionAct: [ :list | list selection inspect ] entitled: 'Inspect'