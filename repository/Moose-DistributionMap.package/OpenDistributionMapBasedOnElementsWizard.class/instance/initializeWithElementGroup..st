initialize-release
initializeWithElementGroup: aMooseGroup
	"DistributionMapWizard new open"

	| lastPane  propertyTextFieldPart propertiyValuesPane textEditorPart partsAndElementsPane |
	"When using a compositePart, we  don't at the end which part has been selected, and therefore which kind of value will be returned. For that, I store each compositePart in a collection, to ask them at the end which part is selected"
	compositeParts := OrderedCollection new.
	self mooseGroup: aMooseGroup .
	
	partsAndElementsPane := WizardFirstPane named: 'Parts and elements'.
	self initializeFirstPane: partsAndElementsPane.
	propertiyValuesPane := WizardLastPane named: 'Property values'.
	
	
	self addPane: partsAndElementsPane .
	self addPane: propertiyValuesPane .


	self initializePropertyValuesPane: propertiyValuesPane .
	
	
	

	