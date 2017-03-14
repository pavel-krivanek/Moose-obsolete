accessing
wizardPanes: anOrderedCollection
	<lint: 'Methods implemented but not sent' rationale: 'method provided  to the user of the library' author: 'cyrille.delaunay'>
	"set all the wizard panes controled by this wizard control. Those panes will be display in the same order than the one of anOrderedCollection"
	^wizardPanes := anOrderedCollection