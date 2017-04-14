private
roots
	self
		flag:
			'VBL - Add a test to detect that the repository is a meta model or not. If  it is, the exporter works normally else, only the roots are exported (issue was detected when adding the container pragmas). I don''t know if it is the better fix to do.'.
	^ roots
		ifNil:
			[ roots := repository elements select: [ :each | (self isPrimitiveTypeOrObject: each) not and: [ repository isMetamodel not or: [ (repository containerOf: each) isEmptyOrNil ] ] ] ]