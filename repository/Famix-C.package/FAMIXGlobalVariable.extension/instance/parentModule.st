*Famix-C
parentModule
	<MSEProperty: #parentModule type: #FAMIXModule>
	<MSEComment: 'Module (typically a file) defining the global variable.'>
	^ self privateState 		
		attributeAt: #parentModule
		ifAbsentPut: [ nil ]