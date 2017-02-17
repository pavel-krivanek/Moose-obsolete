rendering
render: aPaneLine

	|morphContents|
	self wizardCell: aPaneLine.
	morphContents := self cellContentsOf: self wizardCell.
	^ morphContents 
	"^ self dialogWindow  contentMorph: morphContents."
	   