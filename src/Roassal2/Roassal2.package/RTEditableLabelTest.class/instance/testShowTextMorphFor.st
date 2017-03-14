tests
testShowTextMorphFor

	| editable shape e v |
	editable := RTEditableLabel new height: 30.
	shape := RTCompositeShape new.
	shape allOfSameSizeWithPadding.
	shape add: (RTBox new color: Color white; borderWidth: 2; borderColor: Color black).
	shape add: editable.

	e := shape elementOn: 'hello'.
	v := RTView new.
	v add: e.
	(editable showTextMorphFor: e) delete.