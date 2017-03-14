*XML-Parser-GTExtensions
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: 5>
	^ composite tree
		title: 'Tree';
		display: [ {self} ];
		children: #treeViewChildren;
		format: #treeViewLabelText;
		when: [self requiresTreeView];
		rootsExpanded