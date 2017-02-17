public
removeFromView
	"Remove the context from the view. All the callbacks due to the interaction are removed as well"
	self view removeAttributeAt: #GlamourContext ifAbsent: [ ].

	self interactionsToBeRegistered do: [ :intClass | 
		self view removeInteractionIfPresent: intClass ]