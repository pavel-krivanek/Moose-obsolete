instance creation
fromFile: aFileName
	| svg |
	svg := AthensSVGConverter fromFile: aFileName.
	^ self new svg: svg 