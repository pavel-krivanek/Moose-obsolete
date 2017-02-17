testing
testAnnoExtractionFromNormal
	| code cleaner |
	code := OrderedCollection new.
	code add: '1.27         (conor    17-Jul-01):     public void setThreadContextLoader() {'.
	code add: '1.27         (conor    17-Jul-01):         if (isContextLoaderSaved) {'.
	code
		add: '1.27         (conor    17-Jul-01):             throw new BuildException("Context loader has not been reset");'.
	code add: '1.27         (conor    17-Jul-01):         }'.
	code add: '1.45         (conor    11-Mar-02):         if (LoaderUtils.isContextLoaderAvailable()) {'.
	code add: '1.45         (conor    11-Mar-02):             savedContextLoader = LoaderUtils.getContextClassLoader();'.
	code add: '1.46         (conor    12-Mar-02):             ClassLoader loader = this;'.
	code add: '1.64         (conor    24-Jan-03):             if (project != null'.
	code
		add:
			'1.53         (umagesh  01-Jun-02):                 && "only".equals(project.getProperty("build.sysclasspath"))) {'.
	code add: '1.46         (conor    12-Mar-02):                 loader = this.getClass().getClassLoader();'.
	code add: '1.46         (conor    12-Mar-02):             }'.
	code add: '1.46         (conor    12-Mar-02):             LoaderUtils.setContextClassLoader(loader);'.
	code add: '1.45         (conor    11-Mar-02):             isContextLoaderSaved = true;'.
	code add: '1.27         (conor    17-Jul-01):         }'.
	code add: '1.27         (conor    17-Jul-01):     }'.
	cleaner := DudeCVSAnnotateCleaner new.
	code := cleaner clean: code.
	self assert: (cleaner lineAnnotations at: 1) equals: '1.27         (conor    17-Jul-01)'.
	self assert: (cleaner lineAnnotations at: 2) equals: '1.27         (conor    17-Jul-01)'.
	self assert: (cleaner lineAnnotations at: 6) equals: '1.45         (conor    11-Mar-02)'.
	self assert: (cleaner lineAnnotations at: 9) equals: '1.53         (umagesh  01-Jun-02)'.
	self assert: (cleaner lineAnnotations at: 14) equals: '1.27         (conor    17-Jul-01)'.
	self assert: (cleaner lineAnnotations at: 15) equals: '1.27         (conor    17-Jul-01)'.
	self assert: cleaner lineAnnotations size equals: 15