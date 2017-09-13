accessing
memberEnds: aProperty
	"Each end represents participation of instances of the Classifier connected to the end in links of the Association."
	self memberEnds
		removeAll;
		addAll: aProperty