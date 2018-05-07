"
This trait provides a common, paradigm agnostic vocabulary to query dependencies of software entities stored in a MooseAbstractGroup.

For more informations: https://moosequery.ferlicot.fr/
"
Trait {
	#name : #TMooseGroupDependencyQueries,
	#category : #'Moose-Query'
}

{ #category : #'*Moose-Query' }
TMooseGroupDependencyQueries >> queryAllIncoming [
	^ MooseIncomingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryAllIncoming ])
]

{ #category : #'*Moose-Query' }
TMooseGroupDependencyQueries >> queryAllOutgoing [
	^ MooseOutgoingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryAllOutgoing ])
]

{ #category : #'*Moose-Query' }
TMooseGroupDependencyQueries >> queryIncoming: aFAMIXClassAssociation [
	^ MooseIncomingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryIncoming: aFAMIXClassAssociation ])
]

{ #category : #'*Moose-Query' }
TMooseGroupDependencyQueries >> queryLocalIncoming: aFAMIXClassAssociation [
	^ MooseIncomingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryLocalIncoming: aFAMIXClassAssociation ])
]

{ #category : #'*Moose-Query' }
TMooseGroupDependencyQueries >> queryLocalOutgoing: aFAMIXClassAssociation [
	^ MooseOutgoingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryLocalOutgoing: aFAMIXClassAssociation ])
]

{ #category : #'*Moose-Query' }
TMooseGroupDependencyQueries >> queryOutgoing: aFAMIXClassAssociation [
	^ MooseOutgoingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryOutgoing: aFAMIXClassAssociation ])
]
