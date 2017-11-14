private
newHighlightingParserFromHandler: aHighlightingParserHandler
	| parser rootElement |

	parser := super newHighlightingParserFromHandler: aHighlightingParserHandler.

	self document
		ifNotNil: [
			parser driver isStandalone: self document isStandalone.
			self document hasDoctypeDefinition
				ifTrue: [
					parser driver doctypeDefinition
						addGeneralEntitiesFrom: self document doctypeDefinition]].

	self outerXMLNode isElement
		ifTrue: [rootElement := self outerXMLNode]
		ifFalse: [
			(self outerXMLNode hasParent
				and: [self outerXMLNode parent isElement])
				ifTrue: [rootElement := self outerXMLNode parent]].
	rootElement
		ifNotNil: [
			parser driver currentElement: rootElement name.
			rootElement hasNamespaces
				ifTrue: [parser driver currentScope: rootElement namespaceScope]].

	parser state: self outerXMLNode parent newInnerXMLState.
	parser state isContentState
		ifTrue: [aHighlightingParserHandler startContent].

	^ parser.