public
for: collectionOfElements add: aTwoArgBlock
	"aTwoArgBlock follows [ :group :model | ... ]"
	"Return all the elements added by the argument block"
	
	"
	Example:
	| v es |
	v := RTView new.
	es := RTBox elementsOn: RTShape withAllSubclasses.
	v addAll: es.
	RTNest new
		for: es
		add: [ :group :model | 
			group
				addAll: ((RTBox new color: Color blue) elementsOn: model rtmethods).
			RTGridLayout on: group ].
	RTFlowLayout new on: es.
	es @ RTPopup @ RTDraggable.
	^ v
	"
	
	| allAddedObject |
	allAddedObject := RTGroup new.
	collectionOfElements do: [ :element |
		| g |
		g := RTGroup new.
		aTwoArgBlock value: g value: element model.
		self doLayoutIfNecessaryOn: g.
		self on: element nest: g.
		
		"Add the elements in the view. If no view has been set, it try to use the view of the elements"
		view isNil
			ifTrue: [ 
				element view ifNil: [ self error: 'Please, specify in RTNest a view to which elements have to be added in using #view:.' ].
				element view addAll: g ]
			ifFalse: [ view addAll: g ].
		allAddedObject addAll: g
	].
	^ allAddedObject