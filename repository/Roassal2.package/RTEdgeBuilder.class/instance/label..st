public labelling
label: twoArgBlock
	"Method useful to label edges. The argument is a two arg block that accept the starting object model and the ending object model. The block has to return a String that will be used to label the edge"
	actions add: [ :edge | 
		| lbl lblEl |
		lbl := twoArgBlock value: edge from model value: edge to model.
		lblEl := RTLabel elementOn: lbl.
		view add: lblEl.
		TRConstraint stick: lblEl between: edge from and: edge to ] 