implementing
function
	| string substring indexOfSubstring |

	string := self firstArgument.
	substring := self lastArgument.
	(indexOfSubstring :=
		string
			findString: substring
			startingAt: 1) > 0
		ifTrue: [
			^ string
				copyFrom: indexOfSubstring + substring size
				to: string size]
		ifFalse: [^ ''].