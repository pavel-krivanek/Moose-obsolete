accessing
isUnique
	"For a multivalued multiplicity, this attributes specifies whether the values in an instantiation of this MultiplicityElement are unique."
	^ isUnique ifNil: [ isUnique := true ]