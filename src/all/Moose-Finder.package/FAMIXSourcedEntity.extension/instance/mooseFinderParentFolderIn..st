*Moose-Finder
mooseFinderParentFolderIn: composite
	<moosePresentationOrder: 10>
	self sourceAnchor ifNil: [ ^ self ].
	self sourceAnchor isFile
		ifFalse: [ ^ self ].
	(self sourceAnchor fileReference parent gtInspectorItemsIn: composite) titleIcon: MooseIcons mooseFolder