private
selector: aString count: anInteger
	| stream |
	stream := WriteStream on: String new.
	stream nextPutAll: aString.
	1 to: anInteger do: [ :index |
		index > 1
			ifTrue: [ stream nextPutAll: 'with' ].
		stream nextPut: $: ].
	^ stream contents asSymbol