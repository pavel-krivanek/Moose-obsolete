private
newHighlightingParserFromHandler: aHighlightingParserHandler
	| parser rootElement context |

	parser := super newHighlightingParserFromHandler: aHighlightingParserHandler.

	self outerXMLNode document
		ifNotNil: [:document |
			parser driver isStandalone: document isStandalone.
			document hasDoctypeDefinition
				ifTrue: [
					parser driver doctypeDefinition
						addGeneralEntitiesFrom: document doctypeDefinition]].

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

	(context := self outerXMLNode parent newInnerXMLContext) isContentContext
		ifTrue: [aHighlightingParserHandler startContent].
	parser context: context.

	^ parser.