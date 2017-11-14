class initialization
initialize
	"self initialize"

	| temp |

	"use a temp to fully initialize it before assignment to avoid possible
	race conditions during class reinitialization"
	temp := Dictionary new.
	self axisSpecifiersTemplate do: [:each |
		| axisSpecifier handlerSelector principalNodeType parserStateClass |
		axisSpecifier := each first.
		handlerSelector := each second.
		principalNodeType := each third.
		parserStateClass :=
			principalNodeType = #attribute
				ifTrue: [XPathNodeTestParserAttributeState]
				ifFalse: [
					principalNodeType = #namespace
						ifTrue: [XPathNodeTestParserNamespaceState]
						ifFalse: [XPathNodeTestParserElementState]].
		temp
			at: axisSpecifier
			put: handlerSelector -> parserStateClass].
	AxisSpecifiers := temp.