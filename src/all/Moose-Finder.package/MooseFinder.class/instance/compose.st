building
compose
	self pager 
"		act: [:b | b update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Update';
"		title: [:each | 'Moose Finder on ', each mooseInterestingEntity mooseDisplayString];
		show: [ :a :each |
			a 	
				title: ((each mooseInterestingEntity mooseDisplayString), ' (', 
							each mooseInterestingEntity class name, ')');
				dynamicActions: [ :list | list entity mooseInterestingEntity mooseFinderActions ].
			each mooseInterestingEntity mooseFinderPresentationsIn: a inContext: self.
			a 
				updateOn: MooseEntityAdded 
				from: [ each isNil ifFalse: [each announcer] ifTrue: [nil] ].
			a 
				updateOn: MooseEntityRemoved 
				from: [ each isNil ifFalse: [each announcer] ifTrue: [nil] ].
			a	
				updateOn: MooseEntityRenamed 
				from: [ each isNil ifFalse: [each announcer] ifTrue: [nil] ]].
