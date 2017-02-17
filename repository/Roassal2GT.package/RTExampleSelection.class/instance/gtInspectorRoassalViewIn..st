ui
gtInspectorRoassalViewIn: composite
	<gtInspectorPresentationOrder: -10>
	| returnValue |
	returnValue := self returnValue. " rt examples are no longer cached - we make a speed bump here "
	((Array with: RTView with: RTBuilder) noneSatisfy: [ :c | returnValue class includesBehavior: c ])
		ifTrue: [ ^ self ].
	composite roassal2
		title: 'Canvas';
		initializeView: [ returnValue ]
		