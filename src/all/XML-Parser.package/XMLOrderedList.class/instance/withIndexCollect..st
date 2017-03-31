enumerating
withIndexCollect: aTwoArgumentBlock
	| collected |

	collected := self copyEmptyForCollect.
	1 to: collection size do: [:i |
		collected addLast:
			(aTwoArgumentBlock
				value: (collection at: i)
				value: i)].
	^ collected.