adding - removing
addAll: someElements
	"
	:: Collection -> RTView
	"
	"Add a number of of elements to the view"
	someElements do: [ :el | self add: el ]