public interface
versions
	versions ifNotNil: [ ^ versions ].
	versions := Dictionary new.
	self entities
		do: [ :eachHistory | 
			eachHistory
				do: [ :eachVersion | 
					versions
						at: eachVersion referenceVersion
						ifAbsentPut: [ HismoEntityVersion with: MooseGroup new inHistory: self withReferenceVersion: eachVersion referenceVersion ].
					(versions at: eachVersion referenceVersion) versionEntity add: eachVersion versionEntity ] ].
	versions := versions keys asSortedCollection collect: [ :eachKey | versions at: eachKey ].
	^ versions