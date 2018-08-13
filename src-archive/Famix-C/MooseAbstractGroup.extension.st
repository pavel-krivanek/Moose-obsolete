Extension { #name : #MooseAbstractGroup }

{ #category : #'*Famix-C' }
MooseAbstractGroup >> allHeaders [
	<navigation: 'All headers'>
	^ self allWithType: FmxNGHeader  
]

{ #category : #'*Famix-C' }
MooseAbstractGroup >> allModules [
	<navigation: 'All modules'>
	^ self allWithType: FmxNGModule  
]

{ #category : #'*Famix-C' }
MooseAbstractGroup >> allTypeAliases [
	<navigation: 'All type aliases'>
	^ self allWithType: FmxNGTypeAlias
]
