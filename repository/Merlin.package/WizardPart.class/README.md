A WizardPart is an abstract class which represents a part of a WizardPane. It only provides one output (information), in other words, it deals with a maximum of one information to retrieve.However, a wizardPane can maybe deal with several output informations and should therefore be composed by several WizardPart.On the other hand, a WizardPart can require several input informations.

WizardPart is an abstract class that you should subclass to create your own component in the pane. It's up to you to build the morph contents of a WizardPart (even if some tools to create basic elements are provided by the abstract class). And it's up to you to specify what is the information you want to retrieve from this interface: to do that, you only have to implement the abstrat method 'outputValue' and put into the value you want to transmit (for example, if your wizardpart is composed by a simple drop list you may want to transmit the value of the item selected).
You may also want to override the method 'retrieveRequiredInput' to retrieve some informations and make what you want with it(by default it does nothing). This method is called by the wizardPane before each pane opening.

Instance Variables
	blockContents:		<PanelMorph>
	enableNextButton: <Boolean>

	wizardPane:		<WizardPane>

blockContents
	- is the morph contents of this wizard part. It will be added by wizardPane to the main dialog window contents .

enableNextButton:
	- is telling wether this wizard part authorize the wizardPane next button to be enable or not. By default, its value is true . But sometimes an information is required before going to the next wizard pane. In this case, override the initialize method and call the method 'enableNextButton: false'. Then, just call 'self enableNextButton: true' in your code when the next button has to enabled (for example, you can look at the class ListSelector)



wizardPane
	- the wizard pane controling this wizard part
