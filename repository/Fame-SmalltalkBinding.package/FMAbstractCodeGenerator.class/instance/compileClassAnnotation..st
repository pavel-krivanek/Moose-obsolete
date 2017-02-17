compiling
compileClassAnnotation: fameClass
	| annotationString |
	annotationString := ('annotation<n>',
		'<t>%<MSEClass: <1p>',
		' super: <2p>><n>',
		'<t>%<package: <3p>><n><t>',
		(fameClass isAbstract ifTrue: [ '%<abstract><n><t>' ] ifFalse: ['']))
		expandMacrosWith: fameClass name
						with: fameClass superclass fullName
						with: fameClass package name.
	rbClass theMetaClass
		compile: annotationString, '^self'
		classified: 'initialize-release'