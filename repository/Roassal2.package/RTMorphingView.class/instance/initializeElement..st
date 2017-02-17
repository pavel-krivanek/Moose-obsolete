initialization
initializeElement: aView

	| allModels referenceElements edges |

	allModels := (aView elements collect: #model) asArray.
	referenceElements := referenceView elementsFromModels: allModels.
	referenceModels := referenceElements collect: #model.
	
	"Removing old elements and edges that are not in the new view"
	aView removeElements: (aView elementsFromModels: (allModels difference: referenceModels)).	
	aView removeAllEdges.
	
	"Adding elements that are not in the old view"
	aView addAll: (referenceView elements difference: referenceElements).	

	"Adding edges"	
	edges := RTEdgeBuilder new
						view: aView;
						useAssociations: (referenceView edges collect: #model).
		
	"Updating color and width of edges"
	aView edges do: [ :edge | | referenceEdge |
		referenceEdge := referenceView edgeFromModel: edge model. 
		edge @ RTMakeEdgeNotUpdatable.
		edge trachelShape color: referenceEdge trachelShape strokePaint.
		edge trachelShape width: referenceEdge trachelShape width.
	].

	(aView elementsFromModels: referenceModels) with: referenceElements do: [ :e1 :e2 | 
		self translate: e1 toPositionOf: e2. 
		self resize: e1 toExtentOf: e2. 
		e1 color: e2 color.
	].

	self afterTranslationDoActionOn: aView