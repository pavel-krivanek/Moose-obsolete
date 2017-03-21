testing
hasID: anID
	| document doctypeDefinition attributeValidators |

	self hasAttributes
		ifFalse: [^ false].

	((document := self document) notNil
		and: [(doctypeDefinition := document doctypeDefinition) notNil
			and: [doctypeDefinition hasAttributeValidators
				and: [
					(attributeValidators :=
						doctypeDefinition attributeValidatorsAt: self name) notNil]]])
		ifTrue: [
			^ self
				hasUndeclaredOrDeclaredID: anID
				declaredWith: attributeValidators]
		ifFalse: [^ self hasUndeclaredID: anID].