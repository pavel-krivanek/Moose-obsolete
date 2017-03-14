*Moose-Core
mooseNameOf: aString
	"utility method for concatenating strings to a basic mooseName"
	^ (self mooseName, '.', aString) asSymbol