enumerating
select: aSelectBlock thenCollect: aCollectBlock
	| collected |

	collected := self copyEmptyForCollect.
	"use to:do: for speed"
	1 to: collection size do: [:i | | item |
		item := collection at: i.
		(aSelectBlock value: item)
			ifTrue: [collected addLast: (aCollectBlock value: item)]].
	^ collected.