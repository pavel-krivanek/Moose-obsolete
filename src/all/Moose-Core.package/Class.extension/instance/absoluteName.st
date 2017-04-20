*Moose-Core
absoluteName
	"Answer an environment independent (and therefore truely unique) name."

	<localClassMethod> 
    "This method is supposed to be local in Class because of a good reason.
    We use this pragma to test if Class does not contain some accidental 
    local selectors."

	^ self name asString