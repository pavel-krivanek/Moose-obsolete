ui
gtInspectorPackagesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastList
		title: 'Packages';
		display: [ self packages sorted: [:x :y | x fullName < y fullName] ];
		format: [ :each | each fullName ]