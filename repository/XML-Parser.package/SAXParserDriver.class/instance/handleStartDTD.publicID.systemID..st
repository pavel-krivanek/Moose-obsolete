handling - dtd
handleStartDTD: aRoot publicID: aPublicID systemID: aSystemID
	externalSubsetPublicID := aPublicID.
	externalSubsetSystemID := aSystemID.
	isHandlingDTD := true.

	self doctypeDefinition root: aRoot.
	self saxHandler
		startDTD: aRoot
		publicID: aPublicID
		systemID: aSystemID.