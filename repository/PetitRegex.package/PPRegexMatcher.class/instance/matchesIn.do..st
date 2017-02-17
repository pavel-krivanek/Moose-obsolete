matching
matchesIn: anObject do: aBlock
	| stream |
	stream := anObject asPetitStream.
	(parser flatten ==> [ :match | 
		aBlock value: match.
		(match isEmpty and: [ stream atEnd not ])
			ifTrue: [ stream next ].
		stream atEnd
			ifTrue: [ ^ self ] ]
	/ #any asParser)
		star parse: stream