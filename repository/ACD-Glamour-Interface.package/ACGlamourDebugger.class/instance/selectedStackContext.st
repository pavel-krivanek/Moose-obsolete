accessing
selectedStackContext

	^ ((self browser paneNamed: #stack) port: #selection)  value