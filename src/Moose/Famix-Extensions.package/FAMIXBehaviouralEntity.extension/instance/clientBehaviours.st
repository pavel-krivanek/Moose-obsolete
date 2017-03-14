*Famix-Extensions
clientBehaviours
	<MSEProperty: #clientBehaviours type: #FAMIXBehaviouralEntity> <multivalued> <derived>
	<MSEComment: 'All behaviours that depend on the receiver'>
	^ self invokingBehaviours 