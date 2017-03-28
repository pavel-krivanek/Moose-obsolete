*XML-Parser-GTExtensions
gtInspectorTreeIn: aComposite inContext: aGTInspector
	<gtInspectorPresentationOrder: 5>

	self
		addRemoveActionTo:
			(aComposite tree
				title: 'Tree';
				display: [ {self} ];
				children: [:each | each treeViewChildren];
				format: [:each | each treeViewLabelText];
				when: [self supportsTreeView];
				rootsExpanded)
		in: aComposite
		inContext: aGTInspector