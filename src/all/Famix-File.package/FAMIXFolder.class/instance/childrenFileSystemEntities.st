accessing
childrenFileSystemEntities
	<MSEProperty: #childrenFileSystemEntities type: #FAMIXAbstractFile opposite: #parentFolder>
	<multivalued>
	<derived>
	<MSEComment: 'List of entities contained in this package.'>
	^ self privateState
		attributeAt: #childrenFileSystemEntities
		ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentFolder: ]