tests
testCombining
	self allURIStringsDo: [:uriString | | uri |
		uri := uriString asXMLURI.
		self allURIStringsDo: [:uriStringToCombineWith | | uriToCombineWith combinedURI |
			uriToCombineWith := uriStringToCombineWith asXMLURI.
			combinedURI := uri / uriToCombineWith.
			uriToCombineWith isRelative
				ifTrue: [
					self assert: combinedURI scheme = uri scheme.
					uriToCombineWith hasUserInfo
						ifTrue: [
							self
								assertURI: combinedURI
								atUserInfoEquals: uriToCombineWith]
						ifFalse: [
							self assert: combinedURI userInfo = uri userInfo.
							uriToCombineWith hasHost
								ifTrue: [
									self
										assertURI: combinedURI
										atHostEquals: uriToCombineWith]
								ifFalse: [
									self assert: combinedURI host = uri host.
									uriToCombineWith hasPort
										ifTrue: [
											self
												assertURI: combinedURI
												atPortEquals: uriToCombineWith]
										ifFalse: [
											self assert: combinedURI port = uri port.
											uriToCombineWith hasPath
												ifTrue: [
													uriToCombineWith hasAbsolutePath
														ifTrue: [
															self
																assertURI: combinedURI
																atPathEquals: uriToCombineWith]
														ifFalse: [self deny: combinedURI = uri path]]
												ifFalse: [
													self assert: combinedURI pathSegments = uri pathSegments.
													uriToCombineWith hasQuery
														ifTrue: [
															self
																assertURI: combinedURI
																atQueryEquals: uriToCombineWith]
														ifFalse: [
															self assert: combinedURI query = uri query.
															uriToCombineWith hasFragment
																ifTrue: [
																	self assert:
																		combinedURI fragment =
																			uriToCombineWith fragment]
																ifFalse: [
																	self assert:
																		combinedURI fragment =
																			uri fragment]]]]]].
					uriToCombineWith isEmpty
						ifTrue: [self assert: combinedURI == uri]
						ifFalse: [self deny: combinedURI == uri]]
				ifFalse: [
					"if the arg was an absolute URI, it should have been returned"
					self assert: combinedURI == uriToCombineWith].
			"receiver and arg should be unchanged by combining"
			self
				assert: uri = uriString asXMLURI;
				assert: uriToCombineWith = uriStringToCombineWith asXMLURI]]