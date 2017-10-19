initialization
initializePresenter
	super initializePresenter.
	tree
		items: self traits";
		whenSelectedItemChanged: [ :item | self showVersionsFor: item ]."
	