Class {
	#name : #SmalltalkMetamodelFactory,
	#superclass : #Object,
	#category : #'Moose-SmalltalkImporter'
}

{ #category : #accessing }
SmalltalkMetamodelFactory >> access [

	^ FAMIXAccess
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> anchor [

	^ FAMIXPharoAnchor
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> annotationInstance [ 

	^ FAMIXAnnotationInstance
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> annotationInstanceAttribute [

	^ FAMIXAnnotationInstanceAttribute
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> annotationType [

	^ FAMIXAnnotationType
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> annotationTypeAttribute [

	^ FAMIXAnnotationTypeAttribute
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> attribute [

	^ FAMIXAttribute
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> classEntity [

	^ FAMIXClass
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> comment [

	^ FAMIXComment
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> containerEntity [ 

	^ FAMIXContainerEntity
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> globalVariable [

	^ FAMIXGlobalVariable
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> implicitVariable [

	^ FAMIXImplicitVariable
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> inheritance [

	^ FAMIXInheritance
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> invocation [

	^ FAMIXInvocation
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> localVariable [

	^ FAMIXLocalVariable
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> method [

	^ FAMIXMethod
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> nameResolver [

	^ FAMIXNameResolver
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> namespace [

	^ FAMIXNamespace
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> package [

	^ FAMIXPackage
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> parameter [

	^ FAMIXParameter
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> unknownVariable [

	^ FAMIXUnknownVariable
]
