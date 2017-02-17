accessing - titlesAndParts
withParts: aCollectionOfWizardParts

	titlesAndParts := aCollectionOfWizardParts collect: [:aWizardPart | (aWizardPart asString -> aWizardPart) ]. 