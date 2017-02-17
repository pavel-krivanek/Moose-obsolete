accessing
listItemsFirst: anInteger
	"first: is not portable to GS"
	^ self listItems
		copyFrom: 1
		to: ((anInteger max: 0) min: self listItems size)