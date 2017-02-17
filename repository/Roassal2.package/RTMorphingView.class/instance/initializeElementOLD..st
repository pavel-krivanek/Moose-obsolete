initialization
initializeElementOLD: aView
	| allModels referenceElements |
	allModels := self getAllModelOfView: aView.
	referenceElements := referenceView elementsFromModels: allModels.
	referenceModels := referenceElements collect: #model.

	"Removing old elements and edges that are not in the new view"
	aView
		removeElements: (aView elementsFromModels: (allModels difference: referenceModels)).
	aView removeEdges: (aView edges difference: referenceView edges).

	"Adding elements that are not in the old view"
	aView addAll: (referenceView elements difference: referenceElements).

	"Adding edges that are not in the old view"
	RTEdgeBuilder new
		view: aView;
		useAssociations:
			((referenceView edges collect: #model)
				difference: (aView edges collect: #model)).
	(aView elementsFromModels: referenceModels)
		with: referenceElements
		do: [ :e1 :e2 | 
			self translate: e1 toPositionOf: e2.
			self resize: e1 toExtentOf: e2 ].
	self afterTranslationDoActionOn: aView