private
reverseInPlace
	"unlike #reverse/#reversed, this sorts the receiver directly and
	does not return a copy"

	| previousSortOrder start end |

	"saved because swap:with: clears the sort order"
	previousSortOrder := self sortOrder.
	start := 1.
	end := self size.
	[start < end]
		whileTrue: [
			self
				swap: start
				with: end.
			start := start + 1.
			end := end - 1].
	self sortOrder: previousSortOrder asReversedSortOrder.