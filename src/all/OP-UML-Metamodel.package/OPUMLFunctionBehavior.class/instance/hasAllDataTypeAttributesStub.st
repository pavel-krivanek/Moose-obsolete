operations - stubs
hasAllDataTypeAttributesStub
	"The hasAllDataTypeAttributes query tests whether the types of the attributes of the given DataType are all DataTypes, and similarly for all those DataTypes."
	
	"{OCL} result = (d.ownedAttribute->forAll(a |
    a.type.oclIsKindOf(DataType) and
      hasAllDataTypeAttributes(a.type.oclAsType(DataType))))"
	
	self notYetImplemented
