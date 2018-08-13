Class {
	#name : #SmalltalkMetamodelFactory,
	#superclass : #Object,
	#category : #'FmxNGPharoSmalltalk-Importer'
}

{ #category : #accessing }
SmalltalkMetamodelFactory >> access [

	^ FmxNGStAccess
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> anchor [

	^ FmxNGStSourceAnchor
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> annotationInstance [ 

	^ FmxNGStAnnotationInstance
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> annotationInstanceAttribute [

	^ FmxNGStAnnotationInstanceAttribute
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> annotationType [

	^ FmxNGStAnnotationType
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> annotationTypeAttribute [

	^ FmxNGStAnnotationTypeAttribute
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> attribute [

	^ FmxNGStAttribute
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> classEntity [

	^ FmxNGStClass
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> comment [

	^ FmxNGStComment
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> containerEntity [ 

	^ FmxNGStContainerEntity
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> globalVariable [

	^ FmxNGStGlobalVariable
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> implicitVariable [

	^ FmxNGStImplicitVariable
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> inheritance [

	^ FmxNGStInheritance
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> invocation [

	^ FmxNGStInvocation
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> localVariable [

	^ FmxNGStLocalVariable
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> method [

	^ FmxNGStMethod
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> nameResolver [

	^ FAMIXNameResolver
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> namespace [

	^ FmxNGStNamespace
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> package [

	^ FmxNGStPackage
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> parameter [

	^ FmxNGStParameter
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> reference [

	^ FmxNGStReference
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> sourceLanguage [

	^ FmxNGStSmalltalkSourceLanguage
]

{ #category : #accessing }
SmalltalkMetamodelFactory >> unknownVariable [

	^ FmxNGStUnknownVariable
]
