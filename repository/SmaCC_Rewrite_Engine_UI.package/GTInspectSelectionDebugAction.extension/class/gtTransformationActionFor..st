*SmaCC_Rewrite_Engine_UI
gtTransformationActionFor: aDebugger
	<gtContextSmaCCTransformationStack>
	^ (self forDebugger: aDebugger)
		codePresentationSelector: #rewriteCode;
		icon: GLMUIThemeExtraIcons glamorousInspect