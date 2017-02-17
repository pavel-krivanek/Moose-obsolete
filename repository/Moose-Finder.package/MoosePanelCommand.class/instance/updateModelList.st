actions
updateModelList
	"Refresh the list of models in the moose panel. Note that this is not necessary to call this method when adding a model"
	moosePanel ifNotNil: [ moosePanel updateModelList]