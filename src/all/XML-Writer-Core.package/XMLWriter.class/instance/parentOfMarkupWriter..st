private
parentOfMarkupWriter: aMarkupWriter
	self markupWriterStack size to: 2 by: -1 do: [:i |
		(self markupWriterStack at: i) == aMarkupWriter
			ifTrue: [^ self markupWriterStack at: i - 1]].
	^ nil.