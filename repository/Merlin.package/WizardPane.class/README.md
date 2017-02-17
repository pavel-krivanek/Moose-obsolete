A WizardPane is an abstract class which represents a 'page' that will be displayed in a Wizard. A wizardPane doesn't contain any morph imformation itself: It is composed by several WizardParts, each one containing a specific morph contents. A wizardpane only provide the common set of buttons to naviguate between the panes ('next', 'previous' , 'cancel' , 'terminate' ). It also make the transmission between the wizardParts input and outputs and the WizardControl in which the values are stored.

Instance Variables
	partsAndInformationsAssociated:		<Dictionary>
	partsAndRequiredInformations:		<Dictionary>
	cancelButton:		<Object>
	contents:		<Object>
	wizardParts:		<OrderedCollection>
	wizardControl:		<WizardControl>

partsAndInformationsAssociated
	- a dictionary to store the differents wizardParts and the SINGLE output identifiant associated.

partsAndRequiredInformations
	- a dictionary to store the differents wizardParts and the inputs identifiants required by this WizardPart .

wizardParts
	- the differents WizardParts that composed this WizardPane

wizardControl
	- the WizardControl controlling this pane.
