GTInspector - extensions
gtInspectorGeneralizationsIn: aComposite
	<gtInspectorPresentationOrder: 8>
	aComposite fastTable
		title: 'Generalizations';
		display: [ sharedGeneralizations associations ];
		column: 'name' evaluated: [ :each | each key ];
		column: 'value' evaluated: [ :each | each value ];
		send: [ :selection | 
			selection isNil
				ifTrue: [ nil ]
				ifFalse: [ selection value ] ]