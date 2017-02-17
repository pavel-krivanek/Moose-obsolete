*GT-Examples-Examples
gtExampleOneElementDictionaryFrom: anEmptyDictionary
	<gtExample>
	<label: 'One element dictionary'>
	<dependsOn: #gtExampleEmptyDictionary>
	
	anEmptyDictionary at: 4 put: 2.
	^ anEmptyDictionary