accessing
renderer

	^ renderer ifNil: [^ renderer := MerlinMorphicWizardRenderer new].