public - pies
slice: aBlockOrASymbol
	values := objects collect: aBlockOrASymbol.
	sum := values sum.
	elements := self elementsOn: objects.
	view addAll: elements.
	^ elements