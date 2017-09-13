accessing
extensionPoints: anExtensionPoint
	"The ExtensionPoints owned by this UseCase."
	self extensionPoints
		removeAll;
		addAll: anExtensionPoint