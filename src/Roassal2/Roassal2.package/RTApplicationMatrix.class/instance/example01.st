examples
example01
	"
	self new example01
	"

	| b item01 item02 item03 item04 |
	b := RTApplicationMatrix new.
	item01 := RTAMItem new.
	item01 itemName: 'Contract Management'.
	item01 row: 'Australia'.
	item01 column: 'Corporate Services'.
	item01 color: Color lightRed.
	
	item02 := RTAMItem new.
	item02 itemName: 'Bonus Card Use Watch'.
	item02 row: 'Australia'.
	item02 column: 'Corporate Services'.

	item03 := RTAMItem new.
	item03 itemName: 'MailSnake'.
	item03 row: 'Australia'.
	item03 column: 'Customer Relationship'.

	item04 := RTAMItem new.
	item04 itemName: 'Saleforce light'.
	item04 row: 'France'.
	item04 column: 'Customer Relationship'.
	item04 color: Color lightGreen.
	
	b add: item01; add: item02; add: item03; add: item04.
	^ b