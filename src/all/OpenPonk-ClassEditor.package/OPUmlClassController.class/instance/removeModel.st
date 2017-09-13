removing
removeModel
	| ownerModel |
	ownerModel := diagramController model.
	self remove.
	ownerModel packagedElements remove: self model