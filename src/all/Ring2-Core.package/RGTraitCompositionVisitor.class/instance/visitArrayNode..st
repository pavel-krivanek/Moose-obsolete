visiting
visitArrayNode: anArrayNode 

	^ anArrayNode children collect: [:each | self visitNode: each] 