auxiliary
assignMethods
	methodWithEmptyBodyNodeName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #methodWithEmptyBody
				hasClassScope: false
				class: mseNodeClassName.
	outputServerName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #output:
				hasClassScope: false
				class: mseOutputServerClassName.
	acceptServerName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #accept:
				hasClassScope: false
				class: mseOutputServerClassName.
	acceptNodeName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #accept:
				hasClassScope: false
				class: mseNodeClassName.
	canOutputServerName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #canOutput
				hasClassScope: false
				class: mseOutputServerClassName.
	canOutputNodeName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #canOutput
				hasClassScope: false
				class: mseNodeClassName.
	nameNodeName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #name
				hasClassScope: false
				class: mseNodeClassName.
	nameNodeNameColon := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #name:
				hasClassScope: false
				class: mseNodeClassName.
	nextNodeName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #nextNode
				hasClassScope: false
				class: mseNodeClassName.
	nextNodeNameColon := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #nextNode:
				hasClassScope: false
				class: mseNodeClassName.
	initializeNodeName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #initialize
				hasClassScope: false
				class: mseNodeClassName.
	printOnNodeName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #printOn:
				hasClassScope: false
				class: mseNodeClassName.
	sendNodeName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #send:
				hasClassScope: false
				class: mseNodeClassName.
	canOriginateNodeName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #canOriginate
				hasClassScope: false
				class: mseNodeClassName.
	newNodeClassName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: #new
				hasClassScope: true
				class: mseNodeClassName.