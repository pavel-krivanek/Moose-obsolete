accessing - morph contents
specificMorphContents 

	^ self newColumnWith: (self wizardCell subComponents collect: [:aPaneLineOrAWizardPart | aPaneLineOrAWizardPart merlinRendering morphContents]).