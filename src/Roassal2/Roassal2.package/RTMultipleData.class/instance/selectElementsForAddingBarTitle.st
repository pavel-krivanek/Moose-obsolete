hooks
selectElementsForAddingBarTitle
	^ groupedElements collect: [ :es | es at: (es size / 2) asInteger + 1 ]