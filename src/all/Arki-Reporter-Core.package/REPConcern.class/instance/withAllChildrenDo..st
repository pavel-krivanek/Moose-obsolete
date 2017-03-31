enumerating
withAllChildrenDo: aBlock
	aBlock value: self.
	self children do: [:each |
		each withAllChildrenDo: aBlock ]