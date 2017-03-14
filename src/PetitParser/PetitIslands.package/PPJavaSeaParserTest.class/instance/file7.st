src
file7
 ^
'

package java.lang;

import sun.reflect.annotation.*;

/**
 * @author  unascribed
 * @see     java.lang.ClassLoader#defineClass(byte[], int, int)
 * @since   JDK1.0
 */
public final
    class Class<T> implements java.io.Serializable,
                              java.lang.reflect.GenericDeclaration,
                              java.lang.reflect.Type,
                              java.lang.reflect.AnnotatedElement {
    
    private static native void registerNatives();
    
	 static {
        registerNatives();
    }

    /*
     * Constructor. Only the Java Virtual Machine creates Class
     * objects.
     */
    private Class() { }


    public String toString() {
        return (isInterface() ? "interface " : (isPrimitive() ? "" : "class "))
            + getName();
    }


    

    AnnotationType getAnnotationType() {
        return annotationType;
    }
}'