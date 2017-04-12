sources
exampleFileSystem
<noTest>
| b color |
b := RTTreeMapBuilder new.
color := RTScale linear 
	domain: #(0 12000);
	range: (Array with: Color gray with: Color red).
b 
	color: Color transparent;
	borderColor: Color black;
	leafColor: [ :f | color scale: f size sqrt ];
	leafWeight: [:f | f size sqrt ]; 
	explore: TRPlatform current workingDirectory
	nesting: #directories
	leaves: #files.
^ b