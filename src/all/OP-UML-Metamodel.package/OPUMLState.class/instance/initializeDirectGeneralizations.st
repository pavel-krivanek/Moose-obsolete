initialization
initializeDirectGeneralizations
	directGeneralizations := {
		sharedGeneralizations at: #RedefinableElement.
		sharedGeneralizations at: #Namespace.
		sharedGeneralizations at: #Vertex.
	}