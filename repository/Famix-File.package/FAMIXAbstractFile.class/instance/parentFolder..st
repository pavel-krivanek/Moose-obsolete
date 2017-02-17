accessing
parentFolder: aFolder
	self privateState
		attributeAt: #parentFolder
		put:
			(FMMultivalueLink
				on: self
				update: #childrenFileSystemEntities
				from: self parentFolder
				to: aFolder).
	self resetMooseName