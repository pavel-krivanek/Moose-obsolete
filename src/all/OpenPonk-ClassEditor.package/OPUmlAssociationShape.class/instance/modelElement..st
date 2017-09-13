accessing
modelElement: aModel
	super modelElement: aModel.
	nameLabel modelElement: aModel.
	propertiesLabel modelElement: aModel.
	stereotypeLabel modelElement: aModel.
	sourceEndLabels modelElement: aModel memberEnds first.
	targetEndLabels modelElement: aModel memberEnds second