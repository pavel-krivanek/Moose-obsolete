*XPath-GTExtensions
errorTextFor: anError
	| errorClassName errorMessage errorText |

	errorClassName := anError class name asString.
	errorMessage := anError messageText.
	errorText :=
		(errorClassName, '
	', errorMessage) asText.
	errorText
		addAttribute: TextColor red
		from: 1
		to: errorText size.
	errorText
		addAttribute: XPathExpressionHighlightDefaults defaultDefaultColor
		from: 1
		to: errorClassName size.
	errorText
		addAttribute: TextEmphasis bold
		from: 1
		to: errorClassName size.
	^ errorText.