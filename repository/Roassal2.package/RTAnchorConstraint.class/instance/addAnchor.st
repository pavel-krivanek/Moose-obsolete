building
addAnchor
	anchorElement := self anchorShape element.
	element view add: anchorElement.
	guideEdge := self guideLine edgeFrom: element to: anchorElement.
	element view add: guideEdge.
	edge trachelShape
		addCallback:
			(TRRemoveCallback
				block: [ element remove.
					anchorElement remove ])