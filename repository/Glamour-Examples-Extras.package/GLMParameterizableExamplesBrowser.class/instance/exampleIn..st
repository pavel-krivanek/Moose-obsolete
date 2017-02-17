building
exampleIn: composer
	self renderedExampleIn: composer.
	composer pharoMethod
		title: 'Source code';
		act: [ :text :exampleClass :exampleSelector | Smalltalk tools browser openOnClass: exampleClass selector: exampleSelector ]
			icon: GLMUIThemeExtraIcons glamorousBrowse
			entitled: 'Browse';
		smalltalkClass: [ :exampleClass | exampleClass ];
		doItReceiver: [ :exampleClass | exampleClass ];
		display: [ :exampleClass :exampleSelector | exampleClass sourceCodeAt: exampleSelector ]