private
setupInnerXMLDocumentForParser: aParser
	aParser driver isStandalone: self document isStandalone.
	self document hasDoctypeDefinition
		ifTrue: [
			aParser driver doctypeDefinition addGeneralEntitiesFrom:
				self document doctypeDefinition].