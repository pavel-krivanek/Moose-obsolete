accessing
wizardPart: aWizardPart 					
	
	"We want to keep a hook to act when the next button (or the terminate button) of a pane is pressed. Looks a bit hacky but usefull. By default we just execute the 'populateWizardPartOutput' method, but you can reuse this hook in any other place of this MerlinMorphPartWidget"			
	aWizardPart wizardPane renderer whenNextIsPressedDo: [self populateWizardPartOutput].  
	aWizardPart wizardPane renderer whenTerminateIsPressedDo: [self populateWizardPartOutput]. 
	wizardPart := aWizardPart 