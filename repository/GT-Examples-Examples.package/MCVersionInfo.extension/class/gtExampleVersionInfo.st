*GT-Examples-Examples
gtExampleVersionInfo
	<gtExample>
	<label: 'Metacello version-info'>
	
	MCWorkingCopy allManagers do: [ :each | 
		each packageName = 'GT-Examples' ifTrue: [ 
			^ each versionInfo ] ].
	^ nil