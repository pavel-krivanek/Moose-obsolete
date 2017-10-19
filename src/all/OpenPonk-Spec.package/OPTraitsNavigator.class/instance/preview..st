accessing
preview: aTrait

	| aModel preview |	
		
 	preview := self owner preview.
	
	aModel := aTrait traitGroupUMLModel.
	project := OPProject new
		name: 'Simple Association';
		addModel: aModel;
		yourself.
	
	preview 
		ifNil: [ 
			self owner preview: (OPHiddenWorkbench  openProject: project). ]
		ifNotNil: [ 
			self owner preview window isClosed ifTrue: [ 
				self owner preview: (OPHiddenWorkbench  openProject: project). ].
			self owner preview openProject: project. ].
		
				 
		