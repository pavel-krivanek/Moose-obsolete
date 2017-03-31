printing
writeXMLOn: aWriter
	| tagWriter |

	tagWriter := aWriter tag: self name.
	self hasNamespaces
		ifTrue: [
			"non-standard setXMLNSDeclarations: use for performance"
			tagWriter setXMLNSDeclarations: self namespaceScope prefixMappings].
	self hasAttributes
		ifTrue: [
			"non-standard setAttributes: use for performance"
			tagWriter setAttributes: self attributeNodes].
	self hasChildren
		ifTrue: [tagWriter with: [self writeInnerXMLOn: aWriter]]
		ifFalse: [tagWriter write].