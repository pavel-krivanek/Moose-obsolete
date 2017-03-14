accessing
name: aName
	"Renames the element. If aName is a qualified name and namespace checking is
	enabled (default), then the prefix must already have been declared. This can
	be done while renaming using name:namespaceURI."

	self renameWith: [
		name := aName.
		localName := aName xmlLocalNameAfterPrefix]