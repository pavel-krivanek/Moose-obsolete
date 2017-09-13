sources
exampleClassifier
| el lbl comp compLbl v |
el := OPUmlClassifierShape new.
lbl := OPUmlNameLabel new.
lbl text: 'Name'.
lbl localStyle: (OPUmlStyle new fontSize: 11).
lbl owningElement: el.
comp := OPUmlCompartment new.
comp owningElement: el.
(compLbl := OPUmlLabel new)
	owningElement: comp;
	text: 'attr'.
v := RTView new.
el renderIn: v.
el rtElement when: TRMouseLeftClick do: [ :evt |  ].
el rtElement @ RTResizable @ RTDraggable.
^ v