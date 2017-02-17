public normalize color
distinctColor
	"give a color to each element based on the model identify.
	Two elements have the same color if they have the same model"
	^ self distinctColorUsing: #yourself