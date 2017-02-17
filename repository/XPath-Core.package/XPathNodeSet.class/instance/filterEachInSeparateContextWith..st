private
filterEachInSeparateContextWith: aThreeArgumentBlockOrNumber
	| copy |

	aThreeArgumentBlockOrNumber isNumber
		ifTrue: [
			copy :=
				aThreeArgumentBlockOrNumber asXPathNodeSetPosition = 1
					ifTrue: [self copy]
					ifFalse: [self copyEmpty]]
		ifFalse: [
			copy := self copyEmpty.
			1 to: self size do: [:i | | node result |
				node := self at: i.
				(result :=
					aThreeArgumentBlockOrNumber
						cull: node "context node"
						cull: 1 "context position"
						cull: 1) isNumber "context size"
						ifTrue: [
							result asXPathNodeSetPosition = 1
								ifTrue: [copy addLast: node]]
						ifFalse: [
							result asXPathBoolean
								ifTrue: [copy addLast: node]]]].
	"filtering cannot change the sort order"
	^ copy sortOrderFrom: self.