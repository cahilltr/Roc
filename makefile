########################################
# Variables

# JUnit 4 JAR location
junitJar := $(wildcard $(junit) /usr/share/java/junit4.jar ~/opt/junit4.jar junit4.jar)
ifndef junitJar
$(error Cannot find the JUnit 4 JAR.  Add some alternative locations to the makefile or assign 'junit' on the command line)
else
junitJar := $(firstword $(junitJar))
endif

# Project layout
javaSrcDir := src/java
javaTestDir := test/java
javaPkgDir := mloss/roc

# Java class path
classpath := $(CLASSPATH):$(junitJar):$(CURDIR)/$(javaSrcDir):$(CURDIR)/$(javaTestDir)


# List all the phony targets (targets that are really commands, not files)
.PHONY: listconfig test clean


########################################
# Targets


# Make-related, meta

# List variables and values
listconfig:
	@echo Variables:
	@echo junitJar: $(junitJar)
	@echo classpath: $(classpath)


# Java

# General Java compilation
$(javaSrcDir)/%.class: $(javaSrcDir)/%.java
	cd $(javaSrcDir) && javac -cp $(classpath) $*.java
$(javaTestDir)/%.class: $(javaTestDir)/%.java
	cd $(javaTestDir) && javac -cp $(classpath) $*.java

# List Java dependencies here
$(javaTestDir)/$(javaPkgDir)/CurveDataTest.class: $(javaSrcDir)/$(javaPkgDir)/CurveData.class


# JUnit

# Run all tests
test: $(javaTestDir)/$(javaPkgDir)/CurveDataTest.class
	@cd $(javaTestDir) && java -cp $(classpath) org.junit.runner.JUnitCore mloss.roc.CurveDataTest


# Packages



# Cleanup

# Remove all derived files
clean:
	@find -name '*.class' -delete