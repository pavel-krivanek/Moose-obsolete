*Famix-Extensions
isOverriden
	<MSEProperty: #isOverriden type: #Boolean>
	<derived>
	<MSEComment: 'The method is overrided in a sub class'>
	^ self belongsTo subclassHierarchyGroup
		anySatisfy: [ :each | each hasMethodWithSignature: self signature ]