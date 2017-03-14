tests
testBasic02

	| v e int labelledInteraction |
	v := RTView new.

	e := RTBox elementOn: 1.
	v add: e.

	int := RTShowLabel new.
	int highlightObject: #yourself.
	int top.
	int color: Color red.
	e @ int.

	"Checking the labelledInteraction"
	labelledInteraction := int labelledInteraction.
	self assert: labelledInteraction textElement notNil.
	self assert: (labelledInteraction textElement rtValue: e) equals: 1.

	"Low level highlight"	
	self assert: v canvas numberOfShapes equals: 1.
	int doHighlightElement: e.
	self assert: v canvas numberOfShapes equals: 2.
	int doUnhighlightElement: e.
	self assert: v canvas numberOfShapes equals: 1.
	
	"High level highlight"	
	self assert: v canvas numberOfShapes equals: 1.
	int doHighlight: e.
	self assert: v canvas numberOfShapes equals: 2.
	int doUnhighlight: e.
	self assert: v canvas numberOfShapes equals: 1.

	"Simulating mouse entering"
	self assert: v canvas numberOfShapes equals: 1.
	e testCaseAnnounce: TRMouseEnter.
	self assert: v canvas numberOfShapes equals: 2.
	e testCaseAnnounce: TRMouseLeave.
	self assert: v canvas numberOfShapes equals: 1.