comments and strings
comment
	| end |
	end := '*/' asParser.
	^ ('/*' asParser, (end negate star), end)