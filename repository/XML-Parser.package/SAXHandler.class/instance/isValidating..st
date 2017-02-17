configuring
isValidating: aBoolean
	"If true and the document has a schema (like a DTD with ELEMENT and ATTLIST
	declarations) the document will be validated against it. Otherwise only
	entity references and xml:id attributes will be validated.
	
	(This is unlike the standard which requires validating parsers to reject
	all documents without DTDs or other schemas. To get that behavior,
	use requiresDocumentConstraints:)

	Enabling disables preservesUndeclaredEntityReferences.
	Disabling disables requiresDocumentConstraints."

	self configuration isValidating: aBoolean