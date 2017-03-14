*Famix-Extensions
invokingMethods
	<MSEProperty: #invokingMethods type: #FAMIXMethod> <derived> <multivalued>
	<MSEComment: 'The methods invoking the receiver'>

	^ self invokingBehaviours select: [ :each | each isMethod ]