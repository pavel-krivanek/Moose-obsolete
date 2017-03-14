control - text entry
updateInitialListByRemoving: anItem

	| tmpInitialList |
	tmpInitialList := self initialList asOrderedCollection.
	tmpInitialList remove: anItem .
	self initialList: tmpInitialList.
					