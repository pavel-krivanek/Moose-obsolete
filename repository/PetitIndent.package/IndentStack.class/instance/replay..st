as yet unclassified
replay: context
	| retval result memento |
	memento := context remember.
	
	retval := OrderedCollection new.
	contents do: [ :p |
"		Transcript crShow:  'parsing: ', p asString."
		result := p parseOn: context.
		result isPetitFailure ifTrue: [
			context restore: memento. 
			^ result
		].
		retval addLast: result.
	].
	^ retval