parsing
parse
	"the tokenizer removes all spaces from lists"
	| listStartIndex listEndIndex totalListValues listValues nextListValuesIndex nextValueStartIndex |

	listStartIndex := 1 + self listStartOffset.
	listEndIndex := listString size - self listEndOffset.
	"count the values to preallocate an Array"
	totalListValues := 1.
	listStartIndex to: listEndIndex do: [:i |
		(listString at: i) == $|
			ifTrue: [totalListValues := totalListValues + 1]].

	listValues := Array new: totalListValues.
	nextListValuesIndex := 1.
	nextValueStartIndex := listStartIndex.
	listStartIndex to: listEndIndex do: [:i | 
		(listString at: i) == $|
			ifTrue: [
				listValues
					at: nextListValuesIndex
					put:
						(listString
							copyFrom: nextValueStartIndex
							to: i - 1).
				nextListValuesIndex := nextListValuesIndex + 1.
				nextValueStartIndex := i + 1]].
	listValues
		at: nextListValuesIndex
		put:
			(listString
				copyFrom: nextValueStartIndex
				to: listEndIndex).

	^ listValues.