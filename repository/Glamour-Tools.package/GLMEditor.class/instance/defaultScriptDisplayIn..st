building
defaultScriptDisplayIn: aTextPresentation
	^ aTextPresentation 
		display: 'composer';
		morphicAct: [:text | GLMBasicExamples open ] icon: GLMUIThemeExtraIcons glamorousExample entitled: 'Browse basic examples'