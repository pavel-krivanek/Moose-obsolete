convertion
asElementOn: aModel
	| e |
	e := RTBox compoundElementOn: aModel.
	e addAll: self elements.
	^ e