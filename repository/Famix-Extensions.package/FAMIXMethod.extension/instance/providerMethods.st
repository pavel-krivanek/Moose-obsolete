*Famix-Extensions
providerMethods
	^ self providerBehaviours select: [ :each | each isMethod ]