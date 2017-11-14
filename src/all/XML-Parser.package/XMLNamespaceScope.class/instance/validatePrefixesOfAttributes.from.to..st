validating
validatePrefixesOfAttributes: anAttributeCollection from: aStart to: aStop
	"performance critical method"
	| attributeLocalNamesAndURIs |

	"#to:do: for speed"
	aStart to: aStop do: [:i |
		attributeLocalNamesAndURIs :=
			self
				validatePrefixesAttribute: (anAttributeCollection at: i)
				hasNoAliasIn: attributeLocalNamesAndURIs]