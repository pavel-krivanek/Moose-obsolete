initialization
initialize
	"
	:: Void -> RTDSM
	"
	super initialize.
	dependency := #yourself.
	self shape
		if: [ :assoc | self isAssocDependent: assoc ] fillColor: Color red.
	