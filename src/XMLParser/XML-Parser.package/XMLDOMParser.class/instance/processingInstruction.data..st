handling - content
processingInstruction: aTargetString data: aDataString
	self topNode addNode:
		(self nodeFactory newPI
			target: aTargetString;
			data: aDataString)