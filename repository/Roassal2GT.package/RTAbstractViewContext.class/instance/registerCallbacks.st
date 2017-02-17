public
registerCallbacks
	"Register the different interactions on the view"
	self interactionsToBeRegistered 
		do: [ :intClass | self view @ (intClass new presentation: self presentation) ]