*Famix-Extensions
clientMethods
	^ self clientBehaviours select: [ :each | each isMethod ]