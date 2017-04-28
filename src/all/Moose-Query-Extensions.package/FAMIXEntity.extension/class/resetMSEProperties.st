*Moose-Query-Extensions
resetMSEProperties
	"
	self resetMSEProperties
		"

	self allSubclasses
		do: [ :aSubClass | 
			aSubClass resetParentAndChildrenAccessors.]