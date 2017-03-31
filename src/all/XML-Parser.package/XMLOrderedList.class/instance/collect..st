enumerating
collect: aBlock
	| collected |

	collected := self copyEmptyForCollect.
	"use to:do: for speed"
	1 to: collection size do: [:i |
		collected addLast: (aBlock value: (collection at: i))].
	^ collected.