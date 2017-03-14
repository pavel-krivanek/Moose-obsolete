design notes
note20080603a
	"On the removal of global methods, or why the Tower of babylon must fall.
	----
		The global methods Object#fameDescription and Class#asFameDescription had always been the cause of much headache and code smells. They introduced global scope, which should be avoided. In particular in an eternal system like Smalltalk, we must take care to avoid global scope. Other than in slant-run systems like Ruby or Python, a Smalltalk system contains instances beloning to different execution context in the same image at the same time. The most obvious example is application and test instances. The best way to handle context  is to make it explicit. Therefore I decided to no longer support a global context (formerly known as 'reference' for historical reasons) in Fame.
		
		Implicit handling of context has both technical and conceptually disadvantages. Technically, because both its implementation techniques (ie installing a dynamic variable on the stack or in the current thread) are not fully supported when debugging. This has lead to quite some pain (lost hours if not days of debugging) in previous versions of Fame. Conceptually, because implicit context always implies the notion of a default context---which is a very dangerous concept, as it might (and was in the past) get used as global context. As long as we only run one application using Fame, that is not a problem, but running two applications running Fame on the default context at same time is surely a one-way ticket to more headache and pain.
		
		All in all, global context is bad for the same reasons any Singelton is a bad thing."
	
	