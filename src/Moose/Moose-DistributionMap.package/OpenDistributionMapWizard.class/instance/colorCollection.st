accessing
colorCollection
	
	"return the collection of all the colors that can be selected to display a property value"
	^ colorCollection ifNil: [ colorCollection := OrderedCollection withAll: {Color blue. Color red . Color green . Color brown. Color yellow . Color orange . Color magenta . Color cyan . Color purple . Color pink }]