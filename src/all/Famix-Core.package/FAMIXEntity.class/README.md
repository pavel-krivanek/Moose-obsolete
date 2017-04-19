FAMIXEntity is the abstract root class of the FAMIX meta-model entities.

## Adaptation of your Famix entity to MooseQuery
To adapt your Famix entity to this new API, you just need to add the pragma container in the accessor method enabling to access the parent in the containment tree. 

       FAMIXAttribute >> parentType
	...
	<container>
	^ parentType

