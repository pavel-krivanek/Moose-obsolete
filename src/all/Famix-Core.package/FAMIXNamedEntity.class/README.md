FAMIXNamedEntity is an abstract class, root of the hierarchy modeling source code entities. FAMIXNamedEntity has a name and it is physically present in source code. For example, methods, variables, types, namespaces. The name of the entity only contains the basic name and not the "fully qualified name". Apart from the name, it also has modifiers (e.g. public, protected, final, etc.) and it can be marked as a stub. A stub is a FAMIXNamedEntity that is used in the source code but its source is not available. 

When applicable, a FAMIXNamedEntity also points to its containing package accessible via parentPackage.

Any of its subclasses must define the meaning of the belongsTo property, an abstract property that provides polymorphic traversal. For example,  FAMIXClass defines belongsTo as being the container, while the FAMIXMethod defines belongsTo to point to the parentType. belongsTo can be used to calculate the "full qualified name" of a named entity. belongsTo is a derived property, which means that it is always computed from the information of other properties.

It can also return the list of invocations performed on this entity (considered as the receiver) (receivingInvocations). 