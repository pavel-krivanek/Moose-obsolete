public - nodes
nodes: objects forEach: aOneArgBlock
	"Add new nodes representing for each object to the view. Each node is a container for other objects.
	
	For example:
	b := RTMondrian new.
	b nodes: (1 to: 10) forEach: [ :valueBetween1And10 | 
		b nodes: (1 to: valueBetween1And10).
		b layout grid ].
	b layout grid.
	b open

	
	Another example:
	b := RTMondrian new.
	b shape box size: #numberOfMethods.
	b nodes: Collection withAllSubclasses forEach: [ :cls |
		b nodes: cls methods.
		b layout grid. ].
	b edges connectFrom: #superclass.
	b layout tree.
	b open
	"
	| result |
	result := self nodes: objects.
	
	result do: [ :element | 
		self pushNewFrame.
		self resetShapeBuilder.
		self resetLayoutBuilder.
		self resetEdgeBuilder.
		self resetInteraction.
			
		aOneArgBlock rtValue: element model.
		RTNest new
			layout: layoutBuilder layout;
			on: element nest: self currentFrame elements.
		self popFrame.
	].
	self resetShapeBuilder.
	self resetLayoutBuilder.
	self resetInteraction.
	^ result