accessing
absentListItem
	^ absentNode ifNil: [absentNode := super absentListItem asXMLStringNode]