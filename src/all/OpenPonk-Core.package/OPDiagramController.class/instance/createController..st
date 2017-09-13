controllers management
createController: aModel
	| controller |
	controller := (self controllerNameFor: aModel) new.
	controller model: aModel.
	^ controller