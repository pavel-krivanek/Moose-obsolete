*Roassal2GT-Inspector
gtInspectorElementsHierarchyIn: composite
	<gtInspectorPresentationOrder: 20>
	composite table 
		title: 'Elements';
		showOnly: 50;
		display: [ :each | each elements ];
		children: #nestedElements;
		column: 'Model' evaluated: [ :each | each model asString ];
		column: 'Shape' evaluated: [ :each | each shape asString ]