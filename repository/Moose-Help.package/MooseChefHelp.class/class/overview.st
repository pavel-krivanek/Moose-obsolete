documentation
overview
	^ HelpTopic 
		title: 'Overview'
		contents: 
'Moose chef is a domain-specific language to query dependencies between structural elements in Moose.

For example, you can have:
aFamixObject queryAllOutgoingInvocations atTypeScope
=> Return all the classes used by aFamixObject, which could be a FAMIXMethod, FAMIXClass, FAMIXNamepsace

aFamixObject queryOutgoingReferences atTypeScope
=> Return all the classes referenced by a famix object.

There are the following scope:
- atNamespaceScope
- atPackageScope
- atTypeScope
'