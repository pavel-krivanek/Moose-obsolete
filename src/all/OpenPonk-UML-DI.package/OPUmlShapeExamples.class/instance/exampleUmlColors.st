sources
exampleUmlColors
|v builder es colors|
builder := [ :c | | el lbl comp compLbl |
el := OPUmlClassifierShape new.
el sharedStyle fillColor: c; strokeColor: c muchDarker.
lbl := OPUmlNameLabel new.
lbl text: c asString.
lbl localStyle: (OPUmlStyle new fontSize: 11).
lbl owningElement: el.
comp := OPUmlCompartment new.
comp owningElement: el.
(compLbl := OPUmlLabel new)
	owningElement: comp;
	text: 'attr'.
el renderIn: v.
el rtElement when: TRMouseLeftClick do: [ :evt |  ].
el rtElement @ RTResizable @ RTDraggable.
el ].

v := RTView new.

colors := (((Color class methods select: [ :each | each protocol = #defaults ] thenCollect: [ :each |
		each methodClass theNonMetaClass perform: each selector
		]) reject: #isArray) sorted: [:a :b |
			((0.241 * a red) + (0.691 * a green) + (0.068 * a blue)) sqrt
			<
			((0.241 * b red) + (0.691 * b green) + (0.068 * b blue)) sqrt
		]).
	
es := colors collect: [ :each | builder value: each ].

RTGridLayout new on: es.

^ v