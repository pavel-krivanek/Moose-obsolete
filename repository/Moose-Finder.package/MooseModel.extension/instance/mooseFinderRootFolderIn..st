*Moose-Finder
mooseFinderRootFolderIn: composite
	<moosePresentationOrder: 30>
	self rootFolder asFileReference exists ifTrue: [ 
		(self rootFolder asFileReference gtInspectorItemsIn: composite)
			titleIcon: MooseIcons mooseFolder ]