importing
codeToDeletePackages
	"
| b arr list |
list := OrderedCollection new.
list 
	add: 'Roassal2-Extentions'; 
	add: 'Roassal2-Pharo';
	add: 'Roassal2-Visualworks'; 
	add: 'Roassal2-Tests-Extentions';
	add: 'Roassal2-Examples-Extentions'.
arr := Array with: 'Roassal2' with: 'Roassal2-Examples' with: 'Roassal2-Tests'.
arr do: [ :ar | 
	b := Registry bundleNamed: ar.
	b leafItems do: [ :pkg | 
		(list includes: pkg name) ifFalse: [
			pkg doUnloadFromImage.
		]. ]. ].


	"
			
			