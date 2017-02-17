as yet unclassified
fromString: aString
	| conv l |
	conv := (ASConverter new stream: aString readStream).
	l := self new.
	l value:  conv nextNumber.
	l units: conv stream upToEnd.
	^ l