positioning
skip: anInteger
	1 to: anInteger do: [:i |
		self atEnd
			ifTrue: [^ self].
		self next]