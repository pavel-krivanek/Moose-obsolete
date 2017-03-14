private
filterWithAll: aFilterCollection startingAt: anIndex
	| filteredNodeSet |

	filteredNodeSet := self.
	anIndex to: aFilterCollection size do: [:i |
		filteredNodeSet isEmpty
			ifTrue: [^ filteredNodeSet].
		filteredNodeSet :=
			filteredNodeSet filterWith: (aFilterCollection at: i)].
	^ filteredNodeSet.