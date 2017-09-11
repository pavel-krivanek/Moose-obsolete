accessing
xmlnsDeclarations: anAssociationCollection
	"set xmlns decls using a dictionary or array of prefix/uri associations.
	empty prefix is default xmlns."
	xmlnsDeclarations :=
		OrderPreservingStringDictionary newFrom: anAssociationCollection