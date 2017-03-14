*Famix-Extensions-navigation
accessTo: aFAMIXPackageOrFAMIXClass 

	|accesses|
	accesses := self methods flatCollect:[:each | each accesses].
	^ accesses 
		selectAsSet: [:access | (access variable isKindOf: #FAMIXAttribute) 
								and:[aFAMIXPackageOrFAMIXClass isAccessedBy: access]].