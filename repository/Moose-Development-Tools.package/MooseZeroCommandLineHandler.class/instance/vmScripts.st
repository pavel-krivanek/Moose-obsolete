accessing
vmScripts
	^ { 
		ZeroConfVMScript latestPharo combiningScript: MooseZeroConfCombinedScript.
		ZeroConfVMScript pharo combiningScript: MooseZeroConfCombinedScript 
	}