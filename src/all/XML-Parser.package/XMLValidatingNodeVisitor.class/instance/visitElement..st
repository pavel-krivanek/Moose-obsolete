visiting
visitElement: anElement
	| attributeDictionary |

	attributeDictionary := 
		anElement hasAttributes
			ifTrue: [anElement attributeNodes asDictionary]
			ifFalse: [Dictionary new].

	self validator
		validateStartTag: anElement name
		attributes: attributeDictionary.
	"validation can change/add attribute values"
	anElement setAttributes: attributeDictionary.

	super visitElement: anElement.

	self validator validateEndTag: anElement name.
	^ anElement.