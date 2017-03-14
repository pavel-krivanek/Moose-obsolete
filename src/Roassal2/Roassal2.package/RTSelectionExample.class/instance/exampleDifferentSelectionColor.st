sources
exampleDifferentSelectionColor

	| int v |
	v := RTComposerExample new exampleClassAnalysis2.
	int := RTSelectableView new.
	int color: [ :e | e color = Color red ifTrue: [Color green] ifFalse: [ Color red ] ].

	v @ int.
	^ v

