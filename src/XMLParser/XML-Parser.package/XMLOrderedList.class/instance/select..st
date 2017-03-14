enumerating
select: aBlock
	| selected |

	selected := self copyEmpty.
	"use to:do: for speed"
	1 to: collection size do: [:i | | item |
		item := collection at: i.
		(aBlock value: item)
			ifTrue: [selected addToCopyLast: item]].
	^ selected.