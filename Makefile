
JFLAGS = -g
JC = javac
.SUFFIXES: .java .class
.java.class:
		$(JC) $(JFLAGS) $*.java
		@echo "Build finished"

CLASSES = \
		src/JavaTest.java

default: classes

classes: $(CLASSES:.java=.class)

clean:
		$(RM) src/*.class

