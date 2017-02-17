initialize-release
initialize
	super initialize.
	links := Set new.
	self
		interface: IdentitySet new
		assignments: OrderedCollection new.