accessing
isStrict
	"Specifies that the Profile filtering rules for the metaclasses of the referenced metamodel shall be strictly applied."
	^ isStrict ifNil: [ isStrict := false ]