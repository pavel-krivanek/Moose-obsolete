removing
removeFromModel: aModel
	| controller |
	controller := self controllerForModel: aModel.
	controller removeModel