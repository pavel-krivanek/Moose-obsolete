accessing - titlesAndParts
wizardParts: aCollectionOfWizardParts

	titlesAndParts := aCollectionOfWizardParts collect: [:aWizardPart | (aWizardPart asString -> aWizardPart) ]. 