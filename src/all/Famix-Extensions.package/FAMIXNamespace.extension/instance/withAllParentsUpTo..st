*Famix-Extensions
withAllParentsUpTo: aNamespace
	^ (self parentScope allParentsUpTo: aNamespace) addFirst: self; yourself