invoking
function
	| string indexOfSubstring |

	string := self firstArgument.
	(indexOfSubstring :=
		string
			findString: self lastArgument
			startingAt: 1) > 0
		ifTrue: [
			^ string
				copyFrom: 1
				to: indexOfSubstring - 1]
		ifFalse: [^ ''].