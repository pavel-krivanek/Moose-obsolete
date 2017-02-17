running
run
	self start.
	spec root allLeafConcerns do: [:each |
		self printConcern: each
		].
	self end