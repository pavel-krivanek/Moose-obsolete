actions
updateContextCheckbox
	"make all the things that have to be done when the user click on the context checkbox:"
	"-> make it disabled and on selected"
	centralCheckbox disable.
	centralCheckbox buttonMorph state: #on.
	"-> select all checkboxes in the context Frame"
	^ contextFrame selectAllContext .