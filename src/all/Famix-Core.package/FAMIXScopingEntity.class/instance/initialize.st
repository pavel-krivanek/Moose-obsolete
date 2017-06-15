initialize-release
initialize
	super initialize.
	childScopes := FMNullMultivalueLink on: self opposite: #parentScope: selector: #childScopes.
	globalVariables := FMNullMultivalueLink on: self opposite: #parentScope: selector: #globalVariables.