accessing
contents
	"return the morph contents of this WizardPart."

	"here, we create the morph representing this part. By doing this here, we enable the morph content to be parametrize by a value from another pane (for example, if we want the default value of a textField to depends on an output from the previous pane). "
	
	^  blockContents. 
	