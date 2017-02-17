ui
gtInspectorExtensionsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastList
		title: 'Extensions';
		display: [ self extensions sorted: [:x :y | x fullName < y fullName] ];
		format: [ :each | each gtDisplayString ]