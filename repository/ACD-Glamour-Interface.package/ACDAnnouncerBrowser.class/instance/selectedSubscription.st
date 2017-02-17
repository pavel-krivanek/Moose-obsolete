accessing
selectedSubscription

	^ ((self browser paneNamed: #components) port: #selection)  value