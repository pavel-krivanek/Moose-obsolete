*Moose-Finder
mooseFinderMetanoolIn: composite
	<moosePresentationOrder: 10>
	composite magritte
		title: 'Meta editor';
		titleIcon: MooseIcons mooseEditor;
		display: [:anObject | anObject mooseInterestingEntity ];
		act: [:magritte |
			| result annotationDescription | 
			annotationDescription := MTLAnnotationDescription new.
			result := annotationDescription asMagritteMorph addButtons addWindow callInWorld.
			(result notNil) ifTrue: [ 
				magritte entity mooseInterestingEntity mooseDescription attributes add: annotationDescription.
				magritte update ] ] 
			icon: GLMUIThemeExtraIcons glamorousAdd entitled: 'Add annotation';
		description: [ :anObject | anObject mooseDescription asMagritteDescriptionWithAnnotations ]