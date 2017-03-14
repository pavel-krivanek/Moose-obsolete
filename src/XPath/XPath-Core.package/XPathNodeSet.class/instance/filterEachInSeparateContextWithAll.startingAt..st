private
filterEachInSeparateContextWithAll: aFilterCollection startingAt: anIndex
	| filteredNodeSet |

	filteredNodeSet := self.
	anIndex to: aFilterCollection size do: [:i |
		filteredNodeSet isEmpty
			ifTrue: [^ filteredNodeSet].
		filteredNodeSet :=
			filteredNodeSet filterEachInSeparateContextWith:
				(aFilterCollection at: i)].
	^ filteredNodeSet.