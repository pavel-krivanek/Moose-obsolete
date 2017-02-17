accessing - morph contents
allCheckboxes 

	^ allCheckboxes ifNil: [
			self computeAllCheckboxes.
			allCheckboxes 
			]