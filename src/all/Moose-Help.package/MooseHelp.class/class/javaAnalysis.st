documentation
javaAnalysis
	^ HelpTopic 
		title: 'Analyzing Java Application'
		contents: 'In order to analyze a Java application in Moose, you need to transform the Java source code into a MSE file. You can use https://github.com/girba/jdt2famix for this.
		
Once loaded, you will have the list of packages of the analyzed application under the category Namespace. Moose consider a Java package as a namespace.
 
allPackages are all the packages _defined_ and _used-but-not-defined_ of your application.
Same for classes and model classes.

If your application is:

public class MyGreatApp extends Object {
	public static void main(String[] args) {
		System.out.println("Hello World");
	}
}

then all model classes will give you the class MyGreatApp. However, allClasses will give you, at least, Object, String, System since your application use these classes, but they are not defined in your application.

'