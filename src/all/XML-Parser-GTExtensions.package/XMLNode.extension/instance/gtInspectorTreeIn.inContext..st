*XML-Parser-GTExtensions
gtInspectorTreeIn: aComposite inContext: aGTInspector
	<gtInspectorPresentationOrder: 1>

	| treeView |

	treeView :=
		aComposite tree
			title: 'Tree';
			display: [{self}];
			children: [:each | each treeViewChildren];
			format: [:each | each treeViewLabelText];
			when: [self supportsTreeView];
			rootsExpanded.

	self
		addRemoveActionTo: treeView
		in: aComposite
		inContext: aGTInspector