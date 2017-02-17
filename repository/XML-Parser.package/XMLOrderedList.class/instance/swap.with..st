accessing
swap: aFirstIndex with: aSecondIndex
	| temp |

	temp := collection at: aFirstIndex.
	collection
		at: aFirstIndex
		put: (collection at: aSecondIndex).
	collection
		at: aSecondIndex
		put: temp.