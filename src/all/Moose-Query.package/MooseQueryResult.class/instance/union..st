enumerating
union: aCollection
	self
		storage:
			(self storage asSet
				addAll: aCollection;
				yourself)