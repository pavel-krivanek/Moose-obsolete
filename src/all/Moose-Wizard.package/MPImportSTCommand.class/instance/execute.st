hooks
execute
	(MooseImportFromSmalltalkImageWizard new
		open;
		mooseModel) ifNotNil: [ :model | self addModel: model ]