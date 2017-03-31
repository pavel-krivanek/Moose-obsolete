expecting-change
change: aBlock 
	| before after |
	before := aBlock value.
	receiver value.
	after := aBlock value.
	before should not equal: after.	