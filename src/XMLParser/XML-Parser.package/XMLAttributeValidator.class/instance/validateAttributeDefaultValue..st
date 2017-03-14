validating
validateAttributeDefaultValue: aDefaultValue
	"This is overridden in subclasses to check default values when validating
	the declaration, but CDATA types should not be validated, and ID types
	cannot have default values at all"