enumerating
reject: aRejectBlock thenCollect: aCollectBlock
	| collected |

	collected := self copyEmptyForCollect.
	"use to:do: for speed"
	1 to: collection size do: [:i | | item |
		item := collection at: i.
		(aRejectBlock value: item)
			ifFalse: [collected addLast: (aCollectBlock value: item)]].
	^ collected.