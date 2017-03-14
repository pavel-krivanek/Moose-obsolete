private
filterWith: aThreeArgumentBlockOrNumber
	| copy |

	copy := self copyEmpty.
	aThreeArgumentBlockOrNumber isNumber
		ifTrue: [
			(self at: aThreeArgumentBlockOrNumber asXPathNodeSetPosition)
				ifNotNil: [:node |
					copy addToCopyLast: node]]
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
							ifTrue: [copy addToCopyLast: node]]
					ifFalse: [
						result asXPathBoolean
							ifTrue: [copy addToCopyLast: node]]]].
	"filtering cannot change the sort order"
	^ copy sortOrderFrom: self.