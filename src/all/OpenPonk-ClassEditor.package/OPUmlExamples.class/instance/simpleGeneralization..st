accessing
simpleGeneralization: aModel
	<gtExample>
	<dependsOn: #emptyModel>
	| cls cls2 |
	aModel name: 'Simple Generalization'.
	cls := OPUMLClass new name: 'Item'.
	cls2 := OPUMLClass new name: 'Thing'.
	OPUMLGeneralization new
		general: cls2;
		specific: cls.
	aModel
		packagedElements:
			{cls.
			cls2} asOrderedCollection.
	^ aModel