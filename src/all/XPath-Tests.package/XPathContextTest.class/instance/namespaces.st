accessing
namespaces
	^ Dictionary new
		at: 'prefix1' put: 'ns1';
		at: 'prefix2' put: 'ns2';
		yourself