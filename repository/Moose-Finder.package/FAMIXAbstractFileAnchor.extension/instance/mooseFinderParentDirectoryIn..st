*Moose-Finder
mooseFinderParentDirectoryIn: composite
	<moosePresentationOrder: 12>
	self fileReference exists ifFalse: [ ^ self ].
	(self fileReference parent gtInspectorItemsIn: composite)
			title: 'Parent directory';
			titleIcon: MooseIcons mooseFolder