I am storing the items of the group during the standard usage of moose entities.

I store the entites for fast access byName and byType. I also contains the all the entities in elements which is not sorted. 

I am used by MooseAbstractGroup subclasses.

Public API and Key Messages

I am managed like a collection and my caches are autoupdated when an entity is added or removed.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	byName:		Dictionnary (key: mooseName)
	byType:		Dictionnary of OrderedCollection (key: FAMIXType)  - the orderedCollection is sorted on access
	elements:		OrderedCollection
	sortedCollectionList:		Dictionnary (key: FAMIXType, value: boolean)


Implementation Points
- On access by type, OrderedCollections in byType dictionary are sorted by MooseName to find its type faster. This sort is stored in sortedCollectionList and is invalidated on addition of a new element in the collection


