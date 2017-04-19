This trait provides a common, paradigm agnostic vocabulary to query dependencies of software entities at meta level.

The purpose of MooseQuery is to provide a new version of MooseChef, but to be independent of the language. Currently, MooseChef is only available for OO languages and has to be adapted to each new langage introduced in Famix.

To be used you should modify FAMIXEntity as following: 

MooseEntity subclass: #FAMIXEntity
	uses: TMetaLevelDependencyQueries
	instanceVariableNames: ''
	classVariableNames: ''
	category: 'Famix-Core'


## Adaptation of your Famix entity to MooseQuery
To adapt your Famix entity to this new API, you just need to add the pragma container in the accessor method enabling to access the parent in the containment tree. 

       FAMIXAttribute >> parentType
	...
	<container>
	^ parentType

You have also to add the <source> and target pragma in the selectors definition for each class inheriting FAMIXAssociation

Note 1: This has been done already for Smalltalk and Java corresponding Famix entities.
Note 2: If an entity may have several containers (for example, in Smalltalk, the container of a Method could be a Class or a Package (in case of extension method), put as many container pragmas as possible containers.

##Principal methods to query the associations from or to an entity.
The methods are generic. They are built symmetrically for incoming and for outgoing associations. The result of each method is a MooseIncomingQueryResult (respectively MooseOutgoingQueryResult).

* queryLocalIncoming: aFAMIXAssociationClass
retrieves incoming association whose source is self and the type of association is aFAMIXAssociationClass. 

         myClass queryLocalIncoming: FAMIXReference



* queryIncoming: aFAMIXAssociationClass
queryLocalIncoming applied on self and recursively on each of its children. The following example looks up for the references incoming any class of myPackage

         myPackage queryIncoming: FAMIXReference


* queryAllLocalIncoming
 similar to queryLocalIncoming but takes into account any kind of association types. The following looks up for the references and the invocation incoming myClass.

         myClass queryAllLocalIncoming 

The following example leads to an empty result since there is no FAMIXAssociation incoming a FAMIXPackage.

         myPackage queryAllLocalIncoming 

* queryAllIncoming
 similar to queryIncoming but takes into account any kind of
  association types. The following example returns all incoming FAMIXAssociation incoming an entity contained in myPackage

         myPackage queryAllIncoming 


##Principal methods to filter the result

The result of these methods are MooseObjectQueryResult. They can be invoked either on a MooseIncomingQueryResult, a MooseOutgoingQueryResult or a FAMIXNamedEntity

* atScope: aFAMIXNamedEntityClass
filters the result by going up in the containment tree until the aFAMIXNamedEntityClass. For example, the following example returns a MooseObjectQueryResult containing FAMIXClasses corresponding to the classes containing the sender of the invocations.

         (myMethod queryLocalIncoming:FAMIXInvocation) atScope: FAMIXClass

NB: The following example makes sense: it returns the method containing the innerClass.

         myClass toScope: FAMIXMethod 

* toScope: aFAMIXNamedEntityClass
is the opposite of atScope:. It filters the result by going down in the containment tree until the aFAMIXNamedEntityClass. The following example returns a MooseObjectQueryResult containing all the methods contained in myClass.

         myClass toScope: FAMIXMethod 


The existing methods and more specifically atTypeScope, atPackageScope:, within:, withinClass:, withinPackage:, outOfClass: are still available. Some of them have been modified to satisfy the new API.