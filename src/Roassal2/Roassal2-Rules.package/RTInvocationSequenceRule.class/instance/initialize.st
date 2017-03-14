as yet unclassified
initialize
	super initialize.
	
	self
		add: #edges requiresPreSend: #nodes:;
		add: #moveBehind requiresPostSend: #connectToAll:;
		add: #setAsFixed requiresPostSend: #add:;
		
		add: #(shape shapes)
		requiresPostSend: #(edges node: #nodes: #node:forIt: #nodes:forEach:)