private
findElementAfterIndex: anIndex named: aName
	anIndex + 1 to: self size do: [:i | | node |
		node := self at: i.
		(node isElement
			and: [node isNamed: aName])
			ifTrue: [^ node]].
	^ nil.