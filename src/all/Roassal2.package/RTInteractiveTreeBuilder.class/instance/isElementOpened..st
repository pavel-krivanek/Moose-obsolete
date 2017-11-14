interactions
isElementOpened: e
	^ e attributes at: #open ifAbsentPut: [ true ].