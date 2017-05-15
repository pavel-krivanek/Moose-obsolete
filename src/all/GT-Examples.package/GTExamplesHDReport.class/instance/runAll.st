running
runAll
	CurrentExecutionEnvironment runTestsBy: [ 
		examples do: [ :each | self runExample: each ]
	]