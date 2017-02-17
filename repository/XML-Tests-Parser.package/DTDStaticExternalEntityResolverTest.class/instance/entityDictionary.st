accessing
entityDictionary
	| entities |

	entities := Dictionary new.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		entities
			at: uriString asXMLURI
			put: replacement].
	^ entities.