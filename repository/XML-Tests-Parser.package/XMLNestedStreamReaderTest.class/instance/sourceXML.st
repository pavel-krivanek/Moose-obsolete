source
sourceXML
	^ self sourceXMLTemplate format:
		(Array
			with: self lf
			with: (String with: self cr with: self lf)
			with: self cr)