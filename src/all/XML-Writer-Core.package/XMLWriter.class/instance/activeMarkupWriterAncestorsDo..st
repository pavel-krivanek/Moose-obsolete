enumerating
activeMarkupWriterAncestorsDo: aBlock
	self markupWriterStack size - 1 to: 1 by: -1 do: [:i |
		 aBlock value: (self markupWriterStack at: i)]