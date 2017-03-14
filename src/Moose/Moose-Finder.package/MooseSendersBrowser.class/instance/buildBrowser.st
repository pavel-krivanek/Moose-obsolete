as yet unclassified
buildBrowser 
	browser := GLMFinder new.
	browser title: 'Senders browser'.
	browser show: [:a | 
		a custom: self methodsBrowser ].
	^ browser