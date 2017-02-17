writing
string: aString
	"writes string content while '&'-escaping any special characters"

	aString size > 0
		ifTrue: [
			self
				newStringMarkup;
				writeEscapedContent: aString]