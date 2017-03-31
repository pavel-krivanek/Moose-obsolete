matching
matchingRangesIn: anObject do: aBlock
	| stream |
	stream := anObject asPetitStream.
	(([ :s | s position ] asParser , parser ==> [ :nodes |
		aBlock value: (nodes first + 1 to: stream position).
		nodes first = stream position
			ifTrue: [ stream next ].
		stream atEnd
			ifTrue: [ ^ self ] ])
	/ #any asParser)
		star parse: stream