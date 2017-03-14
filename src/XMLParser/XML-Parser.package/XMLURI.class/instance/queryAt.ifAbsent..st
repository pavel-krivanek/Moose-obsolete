accessing
queryAt: aKey ifAbsent: aBlock
	"Returns the last percent/plus-decoded value of the query string
	parameter aKey or the value of aBlock if there isn't one"

	self rawQuery reverseDo: [:each |
		(self percentAndPlusDecode: each key) = aKey
			ifTrue: [^ self percentAndPlusDecode: each value]].
	^ aBlock value.