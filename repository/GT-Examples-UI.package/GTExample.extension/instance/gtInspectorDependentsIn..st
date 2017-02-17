*GT-Examples-UI
gtInspectorDependentsIn: composite
	<gtInspectorPresentationOrder: 2>
	self hasDependents ifFalse: [ ^ self ].
	^ (self directDependents gtInspectorItemsIn: composite)
			title: 'Dependents'