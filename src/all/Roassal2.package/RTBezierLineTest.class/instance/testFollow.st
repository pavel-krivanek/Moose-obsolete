tests
testFollow
	| v e bezier startNode endNode edge |
	v := RTView new.
	e := RTBox elementsOn: (Collection withAllSubclasses). 
	v addAll: e.
	bezier := RTBezierLine new 
					color: Color blue;
					follow: #superclass.
	
	startNode := v elementFromModel: OrderedCollection.
	self assert: (bezier getFollowersOf: startNode using: #superclass) size = 3.
	
	endNode := v elementFromModel: Bag.
	edge := bezier edgeFrom: startNode to: endNode.
	self assert: ((bezier getControllingElementsFromFollowFor: edge using: #superclass) collect: #model) asArray = (Array with: SequenceableCollection with: Collection).