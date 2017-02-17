accessing - morph contents
specificMorphContents 

	^ self newRowWith: (self wizardCell subComponents collect: [:aPaneLineOrAWizardPart | aPaneLineOrAWizardPart merlinRendering morphContents]).