send tests
testu
	| collector |
	collector := self doForSource: '^u'.
	self
		assertSends: #()
		in: collector