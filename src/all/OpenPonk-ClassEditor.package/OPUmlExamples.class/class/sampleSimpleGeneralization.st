samples
sampleSimpleGeneralization
	| model cls cls2 |
	model := OPUMLModel new name: 'Model'.
	cls := OPUMLClass new name: 'Item'.
	cls2 := OPUMLClass new name: 'Thing'.
	OPUMLGeneralization new
		general: cls2;
		specific: cls.
	model
		packagedElements:
			{cls.
			cls2} asOrderedCollection.
	^ model