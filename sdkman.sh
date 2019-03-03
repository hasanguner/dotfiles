#!/usr/bin/env bash

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# Install Java
sdk i java 8.0.201-oracle
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
#sdk i maven
#maven -version

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
