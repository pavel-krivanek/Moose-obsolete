enumerating
ancestorsDo: aBlock
	self writer
		ancestorsOfMarkupWriter: self
		do: aBlock