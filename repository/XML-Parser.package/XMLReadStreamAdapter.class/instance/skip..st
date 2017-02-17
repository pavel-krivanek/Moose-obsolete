positioning
skip: anInteger
	"only supports skipping forwards"
	1 to: anInteger do: [:i |
		self atEnd
			ifTrue: [^ self].
		self next]