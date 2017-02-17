*GT-InspectorExtensions-CoreRoassal
viewAnnouncementsOn: view
	"view shape rectangle withoutBorder.
	view node: 'Glamour' forIt: [
		self viewTreeOn: view ].
	self umlClassWithTitle: #yourself view: view nodes: (Array with: 'Announced objects') forEach: [ :eachNode |
		view interaction
				nodraggable;
				forward: ROAbstractMouseDragging.
		view shape label text: [:p | (p class name removePrefix: 'GLM') removeSuffix: 'Renderer' ].
		view nodes: 
			(self pane withAllPanes flatCollect: [:each | 
			each glmSubscriptions collect: [:eachSub | eachSub subscriber]]) asSet.
		view interaction
				nodraggable;
				forward: ROAbstractMouseDragging.
		view shape label text: [:p | (p class name removePrefix: 'GLM') removeSuffix: 'Renderer' ].
		view nodes: 
			(self pane withAllPresentations flatCollect: [:each | 
			each glmSubscriptions collect: [:eachSub | eachSub subscriber]]) asIdentitySet.
		view verticalLineLayout ].
	
	view shape line 
			color: Color red twiceLighter;
			attachPoint: (ROHorizontalAttachPoint new).
	view edges: self pane withAllPanes from: #yourself toAll: [:each | 
			each glmSubscriptions collect: [:eachSub | eachSub subscriber]].
	view shape line 
			color: Color red twiceLighter;
			attachPoint: (ROHorizontalAttachPoint new).
	view edges: self pane withAllPresentations from: #yourself toAll: [:each | 
			each glmSubscriptions collect: [:eachSub | eachSub subscriber]].
	view horizontalLineLayout horizontalGap: 50"