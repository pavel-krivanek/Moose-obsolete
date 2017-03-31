accessing
selectAllContext
	"make all checkboxes selected"
	checkboxes do: [:each | each buttonMorph state: #on]