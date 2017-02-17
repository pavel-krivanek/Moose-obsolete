*GT-Examples-Examples
gtExampleRemoveElementFrom: anEmptyDictionary
	<gtExample>
	<label: 'Remove element'>
	<dependsOn: #gtExampleOneElementDictionaryFrom:>
	
	anEmptyDictionary removeKey: 4.
	^ anEmptyDictionary