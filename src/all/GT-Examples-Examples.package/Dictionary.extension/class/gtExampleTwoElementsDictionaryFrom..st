*GT-Examples-Examples
gtExampleTwoElementsDictionaryFrom: aDictionary
	<gtExample>
	<label: 'Two elements dictionary'>
	<dependsOn: #gtExampleOneElementDictionaryFrom:>
	
	aDictionary at: #fourty put: 'two'.
	^ aDictionary