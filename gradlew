#!/bin/sh
APP_HOME=$(cd "$(dirname "$0")" && pwd -P) || exit
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar
JAVACMD=java
eval exec "$JAVACMD" "-Xmx64m" "-Xms64m" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
