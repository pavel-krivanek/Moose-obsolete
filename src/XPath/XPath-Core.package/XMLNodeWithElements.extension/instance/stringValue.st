*XPath-Core-accessing
stringValue
	"spec says the string-value of documents and elements is all text
	descendants concatenated, so contentString can't be used because it
	inserts spaces"
	^ self rawContentString