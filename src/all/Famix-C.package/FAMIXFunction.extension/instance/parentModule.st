*Famix-C
parentModule
	<MSEProperty: #parentModule type: #FAMIXModule>
	<MSEComment: 'Module (typically a file) defining the function.'>
	^ self privateState 		
		attributeAt: #parentModule
		ifAbsentPut: [ nil ]