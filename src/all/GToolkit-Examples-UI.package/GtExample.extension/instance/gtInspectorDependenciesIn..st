*GToolkit-Examples-UI
gtInspectorDependenciesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ self directDependencies 
		ifEmpty: [ self ] 
		ifNotEmpty: [ :aCollection | 
			(aCollection asOrderedCollection gtInspectorItemsIn: composite)
				title: 'Dependencies' ]
	
	