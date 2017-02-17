MooseEntity is an abstract entity. Entities should subclass this class.
Any moose entity should answer its mooseID, its mooseName and its mooseModel.

!!Extension mechanism

The state instance variable provides a mechanism for extending the state of entities. This is achieved through MooseEntityState. Using this mechanism, a package can extend an entity to add more state. This extension will only be visible when the package is loaded. This is an important mechanism to enable extensibility and modularity. 

For example, if you have YourEntity that subclasses MooseEntity, you can extend it with:

YourEntity>>yourExtendingAttribute
	^ self privateState attributeAt: #yourExtendingAttribute
YourEntity>>yourExtendingAttribute: aValue
	^ self privateState attributeAt: #yourExtendingAttribute put: aValue

(see MooseEntityState for more information)


!!Meta descriptions

Entities should also be meta-described in terms of Fame. This is achieved by means of pragmas:

- First, on the class side, you should have a method . For example, YourEntity could have
YourEntity class>>annotation
	<MSEClass: #YourEntity super: #MooseEntity>
	<package: 'YourPackage'>
	<MSEComment: 'The YourEntity Smalltalk class has a correspondent YourEntity meta entity in the Fame world'>

- The pragma <MSEProperty:type:> must be placed in the getter method to denote a Fame property. For example:
YourEntity>>yourExtendingAttribute
	<MSEProperty: #yourExtendingAttribute type: #YourType>
	<MSEComment: 'This is an attribute extended in a different package'>
	^ self privateState attributeAt: #yourExtendingAttribute
	
	
!!Important API

- mooseID is an Integer that uniquely identifies this entity within the entire Moose environment. 
	It should not change nor be nil. It is generated automatically during the creation of the MooseEntity.
- mooseModel of an entity is must be an instance of MooseModel. It may be nil if the entity is not part of a model.	
	Each entity belongs to one and only one model, if an entity has not yet been added to a model or if an entity has been removed from a model the mooseModel is undefined, that is it may be nil.
- mooseDescription - returns the corresponding FM3MetaDescription instance
- mooseName - returns a symbol that should qualify the current entity. It does not have to be unique
