enumerating
collect: aCollectBlock thenSelect: aSelectBlock
	| selected |

	selected := self copyEmpty.
	"use to:do: for speed"
	1 to: collection size do: [:i | | item |
		item := aCollectBlock value: (collection at: i).
		(aSelectBlock value: item)
			ifTrue: [selected addLast: item]].
	^ selected.