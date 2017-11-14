private
validateAttributeNamespacePrefixes
	"This is similar to #validatePrefixesOfAttributes:from:to:, but for
	a collection of XMLAttributes instead of attribute names.

	Not performance critical because it's only used after parsing when
	an attribute is added or renamed in a parsed DOM tree."

	self usesNamespaces
		ifTrue: [| attributeLocalNamesAndURIs |
			self attributeNodesDo: [:attribute |
				attributeLocalNamesAndURIs := 
					self namespaceScope
						validatePrefixesAttribute: attribute name
						hasNoAliasIn: attributeLocalNamesAndURIs]]