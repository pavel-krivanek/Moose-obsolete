browse
browsePartsOn: aComposite
	aComposite useExplicitNotNil.
	aComposite tabbedArrangement.
	self browseStaticOn: aComposite.
	self browseDynamicOn: aComposite