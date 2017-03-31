accessing
timestamp
	"Work around wiretab missing timestamp"

	^timestamp
		ifNotNil: [ timestamp asNumber ]
		ifNil: [ self creator start + 1 ]