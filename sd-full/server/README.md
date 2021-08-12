## Local Development

Install [Maven](https://maven.apache.org/) and [Yarn](https://yarnpkg.com)

Start `SdApplication` in your IDE

Then start the front end

    cd src/main/app
    yarn start
    
The front end will start on [port 3000](http://localhost:3000).

## Running locally

To build and run locally

    mvn spring-boot:run
    
You can now access the app on [port 8080](http://localhost:8080)

## Build deployable package

To build a deployable artifact

    mvn package
    
The self contained jar will be created in `${project.basedir}/target`

To run the app

    java -jar target/sd-0.0.1-SNAPSHOT.jar
    
You can now access the app on [port 8080](http://localhost:8080)    

## User details

    admin/admin
    user/password

