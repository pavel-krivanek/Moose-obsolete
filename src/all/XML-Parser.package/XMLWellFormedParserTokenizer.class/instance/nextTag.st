tokenizing
nextTag
	"performance critical method"
	| tagName attributes nextChar |

	(streamReader peek == $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextElementName.

	"nil understands isXMLSeparator so is not tested for"
	[(nextChar := streamReader peek) isXMLSeparator
		and: [
			streamReader
				next;
				skipSeparators.
			((nextChar := streamReader peek) == $>
				or: [nextChar == $/]) not]]
		whileTrue: [| attributeName |
			attributeName := self nextAttributeName.
			streamReader skipSeparators.
			(nextChar := streamReader next) == $=
				ifFalse: [
					self errorExpectedAttributeNameValueSeparatorButGot: nextChar].
			streamReader skipSeparators.

			"delay initializing attributes until now to know for sure if it
			needs a non-zero capacity, otherwise use the lazy version"
			((attributes
				ifNil: [attributes := OrderPreservingStringDictionary new: 10])
				xmlAt: attributeName
				newPut: self nextAttributeValue)
				ifFalse: [self errorDuplicateAttribute: attributeName].

			"the ordering of these tests is optimized"
			(attributeName at: 1) == $x
				ifTrue: [
					driver hasUnhandledReservedAttributes
						ifFalse: [
							attributeName isXMLReservedAttributeName
								ifTrue: [driver haveUnhandledReservedAttributes]]]].

	elementNester wasRootElementEnded
		ifTrue: [self errorMultipleDocumentRootElements].
	elementNester startElement: tagName.
	driver
		handleStartTag: tagName
		attributes:
			(attributes
				ifNil: [LazyOrderPreservingStringDictionary new]).

	nextChar == $/
		ifTrue: [
			streamReader next.
			elementNester endCurrentElement.
			driver handleEndTag: tagName].

	self expectTerminator.