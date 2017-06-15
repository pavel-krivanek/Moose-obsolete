ui
gtInspectorSourceIn: composite
	<gtInspectorPresentationOrder: 0>
	self hasImplementingSelector ifTrue: [
		self compiledMethod ifNotNil: [ :c | c asRingDefinition gtInspectorSourceIn: composite ] ]