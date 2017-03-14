gt-inspector-extension
gtInspectorTableIn: composite
	<gtInspectorPresentationOrder: 30>
	| tbl titles |
	(tbl := composite table)
		title: 'CSV';
		display: [ firstRow ifNil: [ self values allButFirst ] ifNotNil: [ self values ] ].
	titles := firstRow ifNil: [ self values first ].
	titles
		withIndexDo: [ :heading :i | 
			tbl
				column: heading
				evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: (each at: i) ] ].
	^ tbl