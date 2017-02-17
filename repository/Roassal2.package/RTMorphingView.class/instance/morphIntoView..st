configuration
morphIntoView: aRTView

	afterAllTranslationsBlocks 
		add: [ :view | view @ (RTMorphingView new 
													referenceView: aRTView; 
													smoothTransition)]