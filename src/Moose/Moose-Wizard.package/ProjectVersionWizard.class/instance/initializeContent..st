initialize-release
initializeContent: shouldUpdateProject

	| versions |
	"1) update project"
	shouldUpdateProject
		ifTrue: [ self selectedProjectInstance updateProject ].
		
	versions := self selectedProjectInstance versions.
	self addPane: (self initializeSourcePaneWith: versions).
	self addPane: (self initializeVersionPaneWith: versions).
