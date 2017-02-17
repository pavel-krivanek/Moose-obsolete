enumerating
with: aCollection collect: aBlock
	| collected |

	collected := self copyEmptyForCollect.
	1 to: (collection size min: aCollection size) do: [:i |
		collected addLast:
			(aBlock
				value: (collection at: i)
				value: (aCollection at: i))].
	^ collected.