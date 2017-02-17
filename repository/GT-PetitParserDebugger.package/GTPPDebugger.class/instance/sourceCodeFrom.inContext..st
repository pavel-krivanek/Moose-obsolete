private utilities
sourceCodeFrom: parser inContext: aPPContext 
	| name root |

	name := parser name.
	root := aPPContext root.
	(root isKindOf: PPCompositeParser) ifTrue: [ 
		name ifNotNil: [ 
			^ root class ultimateSourceCodeAt: (name ifNil: [ #start ]) ifAbsent: [ String new ]
		]
	].
	^ ''