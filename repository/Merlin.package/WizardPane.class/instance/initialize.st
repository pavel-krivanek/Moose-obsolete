initialize-release
initialize
	"by default, the dialog window is a new empty pluggable dialog window "

	super initialize.
	name := ''.
	partsAndInformationsAssociated := Dictionary new.
	partsAndRequiredInformations := Dictionary new.	
	wizardParts := OrderedCollection new.
	