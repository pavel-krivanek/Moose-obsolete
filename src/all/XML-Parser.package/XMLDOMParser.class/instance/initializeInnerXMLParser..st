initialization
initializeInnerXMLParser: aParser
	self document
		ifNotNil: [
			aParser driver isStandalone: self document isStandalone.
			self document hasDoctypeDefinition
				ifTrue: [
					aParser driver doctypeDefinition addGeneralEntitiesFrom:
						self document doctypeDefinition]].

	self nodeStack do: [:each |
		each isElement
			ifTrue: [
				self
					startInnerXMLElement: each
					forParser: aParser]].

	aParser state: self topNode newInnerXMLState.
	aParser state isContentState
		ifTrue: [self startContent].