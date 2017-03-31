*XPath-Core-private
withAncestorNodesDo: aBlock
	aBlock value: self.
	self ancestorNodesDo: aBlock.