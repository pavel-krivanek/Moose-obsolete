tests
test02
	"the setters and getters"
	| b |
	b := RTInteractiveTreeBuilder new.
	b shape box color: Color red.
	b labelShape text: [ :model | model name asUppercase ].
	b lineShape color: Color red.
	b horizontalGap: 250.
	b verticalGap: 10.
	b horizontalPadding: 10.
	self assert: b interaction numberOfInteractions equals: 3.
	
	b explore: Collection using: #subclasses.
	b build