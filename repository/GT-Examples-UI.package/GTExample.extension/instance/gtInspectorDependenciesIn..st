*GT-Examples-UI
gtInspectorDependenciesIn: composite
	<gtInspectorPresentationOrder: 1>
	self hasDependencies ifFalse: [ ^ self ].
	^ (self dependenciesOrArguments gtInspectorItemsIn: composite)
			title: 'Dependencies'