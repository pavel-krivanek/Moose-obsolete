private
pushElement: anElement
	self topNode addNode: anElement.
	^ self pushNode: anElement.