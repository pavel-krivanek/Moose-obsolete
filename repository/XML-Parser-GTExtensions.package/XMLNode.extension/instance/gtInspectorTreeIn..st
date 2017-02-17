*XML-Parser-GTExtensions
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: 8>
	^ composite tree
		title: 'Tree';
		display: [ {self} ];
		children: #treeViewChildren;
		format: #treeViewLabelText;
		when: [self requiresTreeView];
		rootsExpanded