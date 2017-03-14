private
findElementAfterIndex: anIndex
	anIndex + 1 to: self size do: [:i | | node |
		node := self at: i.
		node isElement
			ifTrue: [^ node]].
	^ nil.