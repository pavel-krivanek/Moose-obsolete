sources
exampleClasses

	| b |
	b := RTMondrian new.
	b shape rectangle 
				withBorder;
				width: #numberOfVariables;
				height: #numberOfMethods;
				fillColor: Color white.
	b nodes: RTObject withAllSubclasses.
	b layout grid.
	b build.
	^ b view