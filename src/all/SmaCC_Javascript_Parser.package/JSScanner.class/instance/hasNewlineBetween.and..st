testing
hasNewlineBetween: startIndex and: endIndex
	| position |
	position := stream position.
	[ stream position: startIndex.
	[ stream position <= endIndex and: [ stream atEnd not ] ]
		whileTrue: [ | char |
			char := stream next.
			(char == Character cr or: [ char == Character lf ])
				ifTrue: [ ^ true ] ] ]
		ensure: [ stream position: position ].
	^ false