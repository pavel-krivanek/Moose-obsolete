initialization
resetInteractionBuilder
	interaction := RTDataInteractionBuilder new.
	interaction dataSet: self.
	interaction popup