accessing
nonPercentEncodedPathCharacters
	^ self unreservedCharacters, self subDelimiterCharacters, ':@'