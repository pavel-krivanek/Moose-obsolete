*Moose-Finder
mooseFinderExampleSourceIn: composite inContext: aFinder
	<moosePresentationOrder: 10>
	| previousRawSelection |
	aFinder panes size > 1
		ifTrue: [ 
			previousRawSelection := (aFinder panes reversed second port: #rawSelection) value.
			previousRawSelection isGTExample
				ifTrue: [ (previousRawSelection gtDisplaySourceIn: composite) 
					title: 'E.g. source';
					titleIcon: MooseIcons mooseSourceText ] ]