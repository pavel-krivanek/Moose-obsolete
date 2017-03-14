hooks
openIfPossible: fileName
	"
	By Sean
	
	Gofer it
	smalltalkhubUser: 'SeanDeNigris' project: 'SeansPlayground';
	package: 'NewExternalWebBrowser';
	load.

	'http://google.com' asUrl open.
	"
	
	#NewExternalWebBrowser asClassIfPresent: [ :cls | fileName asUrl open ].
	#NewExternalWebBrowser asClassIfAbsent: [ 
		self inform: 'Try to load NewExternalWebBrowser to fast open of this file' ].