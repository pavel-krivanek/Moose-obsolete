accessing
submachineStates: aState
	"References the submachine(s) in case of a submachine State. Multiple machines are referenced in case of a concurrent State."
	self submachineStates
		removeAll;
		addAll: aState