*Moose-Query
atScope: aFAMIXScope in: aCollection
	1 to: self size do: [ :ind | (self at: ind) atScope: aFAMIXScope in: aCollection ].
	^ aCollection