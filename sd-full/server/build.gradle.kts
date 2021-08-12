plugins {
    java
}

group = "com.zollos.sd"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

val jjwtVersion = "0.9.0"
/*
<properties>
<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
<project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
<java.version>1.8</java.version>
<lombok.version>1.16.20</lombok.version>
<jjwt.version>0.9.0</jjwt.version>
<frontend-maven-plugin.version>1.6</frontend-maven-plugin.version>
</properties>
*/

/*
    <parent>
    <groupId>org.springframework.boot", "spring-boot-starter-parent</artifactId>
    <version>2.0.0.RELEASE</version>
    <relativePath/> <!-- lookup parent from repository -->
    </parent>

*/

dependencies {

    compile("org.springframework.boot", "spring-boot-starter-data-jpa")
    compile("org.springframework.boot", "spring-boot-starter-security")
    compile("org.springframework.boot", "spring-boot-starter-web")
    compile("org.springframework.boot", "spring-boot-starter-websocket")
    compile("org.springframework.security", "spring-security-messaging")

    compile("org.springframework.boot", "spring-boot-properties-migrator")
    compile("org.springframework.security", "spring-security-test")
    compile("org.projectlombok", "lombok", "1.18.10")

    // Security
    compile("io.jsonwebtoken", "jjwt", "${jjwtVersion}")

    // Data
    compile("com.h2database", "h2")     //runtime

    // Test
    testCompile("junit", "junit", "4.12")
    testCompile("org.springframework.boot", "spring-boot-starter-test")


}

configure<JavaPluginConvention> {
    sourceCompatibility = JavaVersion.VERSION_1_8
}
