*Moose-Query
withScope: aFAMIXScope in: aCollection
	1 to: self size do: [ :ind | (self at: ind) withScope: aFAMIXScope in: aCollection ].
	^ aCollection