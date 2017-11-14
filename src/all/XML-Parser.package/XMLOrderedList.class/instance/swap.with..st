accessing
swap: aFirstIndex with: aSecondIndex
	"swap positions of the objects at aFirstIndex and aSecondIndex,
	raising an error if either index is out of bounds"

	| temp |

	temp := collection at: aFirstIndex.
	collection
		at: aFirstIndex
		put: (collection at: aSecondIndex).
	collection
		at: aSecondIndex
		put: temp.