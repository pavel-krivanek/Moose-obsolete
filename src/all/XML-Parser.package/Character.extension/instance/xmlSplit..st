*XML-Parser
xmlSplit: aString
	"faster, portable version"
	| parts |

	parts := OrderedCollection new.
	self
		xmlSplit: aString
		do: [:each | parts addLast: each].
	^ parts.