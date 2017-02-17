private
setupInnerXMLDocumentForParser: aParser
	self document hasDoctypeDefinition
		ifTrue: [
			aParser driver doctypeDefinition addGeneralEntitiesFrom:
				self document doctypeDefinition]