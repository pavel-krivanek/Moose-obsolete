accessing
okButtonActionSelector: selector  arguments: collectionOfArguments  model: model 
	"set the action of the ok button . the message selector will be send to model with the arguments arguments."
	dialogWindow buttons anyOne
		actionSelector: selector;
		arguments: collectionOfArguments ;
		model: model.