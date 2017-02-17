file examples
fileFinder
	<glmBrowser: 'File Finder' input: 'FileDirectory default'>
	"self new fileFinder openOn: FileDirectory default"

	| browser |
	browser := GLMFinder new.
	browser show: 	[ :a | 
		a list
			display: [ :fd | fd entries collect: [:each | 
					FileSystem / fd pathName, fd pathNameDelimiter asString, each name]];
			format: [ :fd | fd localName ];
			when: [ :fd | fd directoryEntry isDirectory ]].
	browser show: 	[ :a | 
		a text
			display: [ :fd | fd fullName ];
			when: [ :fd | fd directoryEntry isDirectory not ] ].
	^ browser