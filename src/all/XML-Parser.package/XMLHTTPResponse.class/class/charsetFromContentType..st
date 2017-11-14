parsing
charsetFromContentType: aContentTypeString
	"Implemented here so the HTML tokenizer can access it when parsing
	<meta> attributes"
	$;
		xmlSplit: aContentTypeString
		do: [:contentTypeField | | contentTypeFieldWithoutWhitespace i | 
			contentTypeFieldWithoutWhitespace :=
				contentTypeField reject: [:each | each isXMLWhitespace].
			(i := contentTypeFieldWithoutWhitespace indexOf: $=) > 0
				ifTrue: [
					(contentTypeFieldWithoutWhitespace
						copyFrom: 1
						to: i - 1) = 'charset'
						ifTrue: [
							^ contentTypeFieldWithoutWhitespace
								copyFrom: i + 1
								to: contentTypeFieldWithoutWhitespace size]]].
	^ ''.