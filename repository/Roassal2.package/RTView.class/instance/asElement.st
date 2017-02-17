convertion
asElement
	| e |
	e := RTBox compoundElement.
	e addAll: self elements.
	^ e