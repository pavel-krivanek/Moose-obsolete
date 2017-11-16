Extension { #name : #MooseAbstractGroup }

{ #category : #'*Famix-C' }
MooseAbstractGroup >> allHeaders [
	<navigation: 'All headers'>
	^ self allWithType: FAMIXHeader  
]

{ #category : #'*Famix-C' }
MooseAbstractGroup >> allModules [
	<navigation: 'All modules'>
	^ self allWithType: FAMIXModule  
]

{ #category : #'*Famix-C' }
MooseAbstractGroup >> allTypeAliases [
	<navigation: 'All type aliases'>
	^ self allWithType: FAMIXTypeAlias
]
