file examples
fileExplorer
	<glmBrowser: 'File Explorer' input: 'FileDirectory default'>
	"self new fileExplorer openOn: FileDirectory default"
	| browser |
	browser := GLMTabulator new.
	browser 
		column: #folders;
		column: [ :col | col row: #files span: 2; row: #preview ] span: 2. 
	browser transmit to: #folders; andShow: [ :a | 
		a tree 
			title: 'Folders'; 
			children: [ :fd | fd directoryNames collect: [ :each | FileSystem / fd pathName, fd pathNameDelimiter asString, each ] ]; 
			format: [ :folder | folder localName ] ].
	browser transmit to: #files; from: #folders; andShow: [ :a |
		a list 
			format: [ :fd | fd localName ]; 
			display: [ :fd | fd fileNames collect: [:each | FileSystem / fd pathName, fd pathNameDelimiter asString, each ] ] ].
	browser transmit to: #preview; from: #files; andShow: [ :a |
		a text
			display: [ :file | file fullName ] ].
	^ browser