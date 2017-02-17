RTCircularTreeMapExample new installTitle: 'FileSystem' 
		code:
		'

| b color |
b := RTCircularTreeMapBuilder new.
color := RTScale linear 
	domain: { 0. 12000.};
	range: { Color gray. Color red }.
b shape
	color: Color transparent;
	borderColor: Color black;
	if: [ :f | f isFile ] color: [ :f | color scale: f size sqrt ].
b 
	leafWeight: [:f | f size sqrt ]; 
	explore: FileSystem disk workingDirectory
	nesting: #directories
	leaves: #files.
b build.
^ b view'
	