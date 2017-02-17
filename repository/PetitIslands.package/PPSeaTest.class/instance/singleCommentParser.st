tests - water objects
singleCommentParser
	| nl |
	nl := #newline asParser.
	^ '//' asParser, (#any asParser starLazy: nl), nl.