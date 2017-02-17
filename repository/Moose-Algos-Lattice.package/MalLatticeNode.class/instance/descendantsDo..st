enumerating
descendantsDo: aBlock

	self descendants  do: aBlock.
	self descendants do: [ :each |
		each descendantsDo: aBlock ]