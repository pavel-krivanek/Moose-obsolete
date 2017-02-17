accessing
mightHasChanged
	"The contents of a part might has changed without the part itself know it (This is the case for a textField). This method will be called by the parent wizard pane to be sure all has been corretly done before opening the next pane. By default does nothing. If you have to make something special before opening the next pane, it 's the good place to do it'"
	
	self hasChanged