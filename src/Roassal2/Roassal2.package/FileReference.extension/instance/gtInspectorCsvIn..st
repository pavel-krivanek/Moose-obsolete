*Roassal2-Table
gtInspectorCsvIn: composite
	<gtInspectorPresentationOrder: 0>
	(self isFile and: [ self extension = 'csv' ])
		ifFalse: [ ^ self ].
	^ (RTTabTable new input: self contents) gtInspectorTableIn: composite