copying
copyStream: aStream to: writeStream translatingMatchesUsing: aBlock
	| stream |
	stream := aStream asPetitStream.
	((parser flatten ==> [ :match | 
		writeStream nextPutAll: (aBlock value: match).
		(match isEmpty and: [ stream atEnd not ])
			ifTrue: [ writeStream nextPut: stream next ].
		stream atEnd
			ifTrue: [ ^ self ] ])
	/ (#any asParser ==> [ :char | writeStream nextPut: char ]))
		star parse: stream