A ContextFrame is the frame that is open by the MooseImportInterface when the user click on the 'detailContextbutton'. It is composed by a set of checkboxes corresponding the context of import for an importer.

Instance Variables
	builder:		<StandardWindow>
	checkboxes:		<OrderedCollection>
	contextSelected:		<SortedCollection> 
	dialogWindow:		<PluggableDialogWindow>

builder
	- the main window in which we plugg the dialog

checkboxes
	- contains all checkboxes objects (CheckboxMorph) present in this frame. 

contextSelected
	- contains items selected when the ok button is clicked by the user.

dialogWindow
	- in which we position all the morph elements
