*Moose-Core
mooseNameOf: aString
	"utility method for concatenating strings to a basic mooseName"

	<localClassMethod> 
    "This method is supposed to be local in Class because of a good reason.
    We use this pragma to test if Class does not contain some accidental 
    local selectors."

	^ (self mooseName, '.', aString) asSymbol