class initialization
initialize
	"self initialize"

	| temp |

	"use a temp to fully initialize it before assignment to avoid possible
	race conditions during class reinitialization"
	temp := Dictionary new.
	self axisSpecifiersTemplate do: [:each |
		| axisSpecifier handlerSelector principalNodeType parserContextClass |
		axisSpecifier := each first.
		handlerSelector := each second.
		principalNodeType := each third.
		parserContextClass :=
			principalNodeType = #attribute
				ifTrue: [XPathNodeTestParserAttributeContext]
				ifFalse: [
					principalNodeType = #namespace
						ifTrue: [XPathNodeTestParserNamespaceContext]
						ifFalse: [XPathNodeTestParserElementContext]].
		temp
			at: axisSpecifier
			put: handlerSelector -> parserContextClass].
	AxisSpecifiers := temp.