*Moose-Query
toScope: aFAMIXScope in: aCollection
	1 to: self size do: [ :ind | (self at: ind) toScope: aFAMIXScope in: aCollection ].
	^ aCollection