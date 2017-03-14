*Famix-Extensions
invokedMethods
	<MSEProperty: #invokedMethods type: #FAMIXMethod> <derived> <multivalued>
	<MSEComment: 'The methods invoked by the receiver'>
	
	^ self invokedBehaviours select: [ :each | each isMethod ]