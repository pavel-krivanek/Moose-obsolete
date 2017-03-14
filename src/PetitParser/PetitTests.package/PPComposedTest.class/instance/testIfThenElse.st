testing
testIfThenElse
	"S ::= if C then S else S | if C then S | X"

	| start if then else cond expr parser |
	start := PPDelegateParser new.
	if := 'if' asParser token trim.
	then := 'then' asParser token trim.
	else := 'else' asParser token trim.
	cond := 'C' asParser token trim.
	expr := 'X' asParser token trim.
	start setParser: (if , cond , then , start , else , start) / (if , cond , then , start) / expr.
	parser := start end.
	self assert: parser parse: 'X'.
	self assert: parser parse: 'if C then X'.
	self assert: parser parse: 'if C then X else X'.
	self assert: parser parse: 'if C then if C then X'.
	self assert: parser parse: 'if C then if C then X else if C then X'.
	self assert: parser parse: 'if C then if C then X else X else if C then X'.
	self assert: parser parse: 'if C then if C then X else X else if C then X else X'.
	self assert: parser fail: 'if C'.
	self assert: parser fail: 'if C else X'.
	self assert: parser fail: 'if C then if C'