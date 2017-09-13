accessing
isOrdered
	"For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this MultiplicityElement are sequentially ordered."
	^ isOrdered ifNil: [ isOrdered := false ]