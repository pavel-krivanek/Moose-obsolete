private
filterWith: aThreeArgumentBlockOrNumber
	| copy |

	copy := self copyEmpty.
	aThreeArgumentBlockOrNumber isNumber
		ifTrue: [
			(self at: aThreeArgumentBlockOrNumber asXPathNodeSetPosition)
				ifNotNil: [:node |
					copy addLast: node]]
		ifFalse: [| contextSize |
			contextSize := self size.
			1 to: contextSize do: [:i | | node result |
				node := self at: i.
				(result :=
					aThreeArgumentBlockOrNumber
						cull: node "context node"
						cull: i "context position"
						cull: contextSize) isNumber
					ifTrue: [
						result asXPathNodeSetPosition = i
							ifTrue: [copy addLast: node]]
					ifFalse: [
						result asXPathBoolean
							ifTrue: [copy addLast: node]]]].
	"filtering cannot change the sort order"
	^ copy sortOrderFrom: self.