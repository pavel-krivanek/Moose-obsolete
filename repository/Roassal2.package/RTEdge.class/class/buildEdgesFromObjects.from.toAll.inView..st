DEPRECATED - edge construction
buildEdgesFromObjects: objects from: fromBlock toAll: toAllBlock inView: view
	self deprecated: 'Please use RTEdgeBuilder instead'.
	^ self buildEdgesFromObjects: objects from: fromBlock toAll: toAllBlock using: RTLine new inView: view scope: (RTGroup withAll: view elements)