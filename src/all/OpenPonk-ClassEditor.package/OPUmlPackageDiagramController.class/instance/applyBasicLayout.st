ui hooks
applyBasicLayout
	| classes generalizations |
	classes := self model packagedElements select: [ :each | each isKindOf: OPUMLClass ].
	generalizations := classes flatCollect: #generalizations.
	RTDominanceTreeLayout new
		verticallyReverse;
		verticalGap: 100;
		horizontalGap: 70;
		doNotAttachPoint;
		on: (classes collect: [ :each | (self controllerForModel: each) figure ])
			edges: (generalizations collect: [ :each | (self controllerForModel: each) figure ]).
	self view canvas camera focusOnCenter