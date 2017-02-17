hooks
execute
	"This method is executed by the menu offered by the Playground. Method #contextClass and #title have to be overriden"
"	self inform: self roassalPresentation hash asString."
	self contextClass setOnView: self roassalView.
	self roassalUpdate