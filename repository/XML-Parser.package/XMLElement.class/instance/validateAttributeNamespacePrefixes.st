private
validateAttributeNamespacePrefixes
	"This is similar to #validatePrefixesOfAttributes:from:to:, but for
	a collection of XMLAttributes instead of attribute names.

	Not performance critical because it's only used after parsing when
	an attribute is added or renamed to a parsed DOM tree."

	| attributeLocalNamesAndURIs |

	self usesNamespaces
		ifFalse: [^ self].

	self attributeNodesDo: [:attribute | | prefix |
		(prefix := attribute prefix) notEmpty
			ifTrue: [
				"not initialized unless needed"
				attributeLocalNamesAndURIs
					ifNil: [
						attributeLocalNamesAndURIs :=
							Set new: self attributeNodes size].
				self namespaceScope
					validatePrefix: prefix
					ofAttribute: attribute name
					hasNoAliasesin: attributeLocalNamesAndURIs]
			ifFalse: [self namespaceScope validateUnprefixedName: attribute name]].