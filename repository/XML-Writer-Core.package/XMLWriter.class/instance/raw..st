writing - unsafe
raw: aString
	"writes raw string content without doing any escaping of special
	characters, unlike #string:"

	aString size > 0
		ifTrue: [
			self
				newStringMarkup;
				nextPutAll: aString]