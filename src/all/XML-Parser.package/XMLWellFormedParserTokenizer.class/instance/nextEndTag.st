tokenizing
nextEndTag
	| tagName |
	"Skip /"
	streamReader next.
	(tagName := elementNester currentElement)
		ifNil: [self errorUnexpectedEndTag: self nextElementName].
	1 to: tagName size do: [:i | | nextChar |
		"can't use == here because wide chars with the same value
		aren't identical in pre-Spur VMs"
		(nextChar := streamReader next) = (tagName at: i)
			ifFalse: [
				self
					errorExpectedEndTag: tagName
					butGot: nextChar
					at: i]].
	elementNester endElement: tagName.
	driver handleEndTag: tagName.
	streamReader skipSeparators.
	self expectTerminator.