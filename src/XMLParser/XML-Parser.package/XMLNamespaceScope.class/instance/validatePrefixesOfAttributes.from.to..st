validating
validatePrefixesOfAttributes: anAttributeCollection from: aStart to: aStop
	"performance critical method"
	| attributeLocalNamesAndURIs |

	"to:do: for speed"
	aStart to: aStop do: [:i | | attribute prefix |
		attribute := anAttributeCollection at: i.
		(prefix := attribute xmlPrefixBeforeLocalName) size > 0 "optimization"
			ifTrue: [
				"not initialized unless needed"
				attributeLocalNamesAndURIs
					ifNil: [
						attributeLocalNamesAndURIs :=
							Set new: anAttributeCollection size].
				self
					validatePrefix: prefix
					ofAttribute: attribute
					hasNoAliasesin: attributeLocalNamesAndURIs]
			ifFalse: [self validateUnprefixedName: attribute]]