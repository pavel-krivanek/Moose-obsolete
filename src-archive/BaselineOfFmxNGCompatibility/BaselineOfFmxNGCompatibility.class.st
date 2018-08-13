Class {
	#name : #BaselineOfFmxNGCompatibility,
	#superclass : #BaselineOf,
	#category : #BaselineOfFmxNGCompatibility
}

{ #category : #accessing }
BaselineOfFmxNGCompatibility >> baseline: spec [ 
    
	<baseline>
        
	| repository | 
	
	repository := self packageRepositoryURL.

	spec for: #common do: [
		spec package: 'FmxNGCompatibility-Generator'.
		spec package: 'FmxNGCompatibility-Entities'.
	].

]

{ #category : #accessing }
BaselineOfFmxNGCompatibility >> packageRepository [

	" Tries to determine a repository from which the baseline is being loaded. Useful for 
	refering other baselines in the same repository. "
	
	^ (self class package mcWorkingCopy repositoryGroup repositories reject: [:each | each = MCCacheRepository uniqueInstance]) 
		ifNotEmpty: [ :repositories | repositories anyOne ]
		ifEmpty: [ nil ]


	
]

{ #category : #accessing }
BaselineOfFmxNGCompatibility >> packageRepositoryURL [

	" Tries to determine a repository URL from which the baseline is being loaded. Useful for 
	refering other baselines in the same repository. "

	^ self packageRepository
		ifNotNil: [ :aRepository | aRepository description ]
		ifNil: [ '' ]


	
]

{ #category : #accessing }
BaselineOfFmxNGCompatibility >> project [
	
	| aProject |
	
	aProject := super project.
	aProject loadType: #atomic.
	^ aProject.
	
]
