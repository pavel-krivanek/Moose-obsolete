tests
testRemovingColumn
	tab
		input:
			'Country	number	toremove
France	20	toremove
Germany	80	toremove'.
	tab removeFirstRow.
	tab removeColumn: 3.
	self assert: tab values equals: #(#('France' '20') #('Germany' '80')).
	self assert: tab firstRow equals: #('Country' 'number')