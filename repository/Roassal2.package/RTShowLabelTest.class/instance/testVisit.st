tests
testVisit
	| int e v |
	int := RTShowLabel new.
	int highlightObject: #yourself.
	int top.
	int color: Color red.
	
	e := (RTBox elementOn: 3).
	v := RTView new.
	v add: e.
	int accept: RTJavascriptVisitor new with: e