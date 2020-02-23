#!/usr/bin/env bash

if [ -z "$SDKMAN_DIR" ]; then
    SDKMAN_DIR="$HOME/.sdkman"
fi

if ! [ -d "$SDKMAN_DIR" ]; then
    curl -s "https://get.sdkman.io" | bash
fi

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk update
sdk version

# Install Java
sdk install java 11.0.6.hs-adpt
java -version

# Install Kotlin
sdk i kotlin
kotlin -version

# Install Groovy
sdk i groovy
groovy -version

# Install Scala
sdk i scala
scala -version

# Install Gradle
sdk i gradle
gradle -version

# Install Maven  
sdk i maven
maven -version

# Install SpringBoot
sdk i springboot
spring --version

# Install Vert.x
#sdk i vertx
#vertx -version

# Install Grails
#sdk i grails
#grails -version

# Install Apache Spark
#sdk i spark
#spark -version
