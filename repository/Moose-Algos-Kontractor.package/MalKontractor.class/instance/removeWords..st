computing
removeWords: aString
	"Remove all the words from the arguments based on the specification done using wordsToBeRemoved:"
	
	| t |
	t := aString.
	wordsToBeRemoved do: [:each |
			t := t copyReplaceAll: each with: ''].
	^ t

	

	