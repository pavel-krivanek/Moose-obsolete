*Moose-Finder
importFileStructure
	| directory |
	directory := UITheme builder chooseDirectory: 'Import file structure from folder'.
	directory
		ifNotNil: [ 
			self name: directory localName.
			MooseFileStructureImporter new
				mooseModel: self;
				completeImport: (OrderedCollection with: directory fullName) ]