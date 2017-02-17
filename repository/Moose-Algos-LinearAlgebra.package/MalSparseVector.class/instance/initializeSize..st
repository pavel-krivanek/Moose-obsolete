initialize-release
initializeSize: aSize

	self flag: #importChange. "replace ArrayList with OrderedCollection"
	size := aSize.
	contents := OrderedCollection new