*XPath-GTExtensions
gtInspectorTreeIn: aComposite
	<gtInspectorPresentationOrder: 5>

	aComposite tree
		title: 'Tree';
		display: [{self}];
		children: [:each | each treeViewChildren];
		format: [:each | each treeViewLabelText];
		when: [self supportsTreeView];
		rootsExpanded