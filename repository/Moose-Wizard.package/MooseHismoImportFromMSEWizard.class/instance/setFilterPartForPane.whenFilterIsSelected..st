creating
setFilterPartForPane: wizardPane whenFilterIsSelected: filterIsSelected

	| filterPart |
	
	wizardPane removeSubComponentAt: 3.
	filterIsSelected
		ifTrue: [
			
			filterPart := MultiCheckboxesPart new 
				inGroupboxNamed: 'Select the entities to be imported';
				labels: MooseImportingContext entityDependencies keys sorted;
				"labels: FAMIXStandardImportingContext new entityDependencies keys;"
				deselectAllOptions.
				
			wizardPane addPart: filterPart associatedTo: #contextSelected].
		
	wizardPane refresh