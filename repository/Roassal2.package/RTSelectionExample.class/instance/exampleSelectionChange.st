sources
exampleSelectionChange

| int v |
v := RTComposerExample new exampleClassAnalysis2.
int := RTSelectableView new.

int when: RTSelectionChange do: [ :evt | 
	evt shape trachelShape color: (int group size < 10 ifTrue: [Color green alpha: 0.3 ] ifFalse: [ Color red alpha: 0.3 ]) ].
v @ int.
^ v

