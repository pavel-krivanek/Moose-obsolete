private
setupInnerXMLNodesForParser: aParser
	| context |

	self nodeStack do: [:each |
		each isElement
			ifTrue: [
				self
					startInnerXMLElement: each
					forParser: aParser]].

	(context := self topNode newInnerXMLContext) isContentContext
		ifTrue: [isInContent := true].
	aParser context: context.