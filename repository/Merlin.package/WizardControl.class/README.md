A WizardControl is the object controling the differents panes (WizardPane) that will be displayed in a Wizard. It make all the transition between those panes when button like 'next' or 'previous' are pressed. Those transitions are composed by opening and closing the panes but also by managing their inputs and outputs. Values of those outputs (representing the information you want to retrieve at the end of the wizard operation) are all stored in the WizardControl.

Instance Variables
	builder:		<StandardWindow>
	currentPane:		<Integer>
	dialogWindow:		<PluggableDialogWindow>
	
	wizardInformations:		<Dictionary>
	wizardPanes:		<OrderedCollection>

builder
	- the main window (common to all panes) in which we plugg a dialogWindow

currentPane
	- an index pointing on the current displayed pane.

dialogWindow
	- in which panes will position their elements (WizardPart). The dialog window is also common to all panes so that the wizard panes windows stay at the same position. (Create a new dialog window for each pane open a window at different positions each times)



wizardInformations
	- A dictionary to memorize output from the different panes. The keys of this dictionary are define when you create a WizardPart (object that composed a WizardPane).

wizardPanes
	- the different panes that composed a wizard. Those panes will be displayed in the order specify by this OrderedCollection. 
