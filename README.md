# Random Workout Generator

Helidon MP project that includes REST operations to obtain exercises from a MySQL database.


## Build and run

```bash
sudo docker-compose up
```

With JDK11+
```bash
mvn package
java -jar target/helidon-quickstart-mp.jar
```

## Exercise the application

```
curl -X GET http://localhost:8080/workout
{
    "name":"Generated Workout",
    "exercises":["Pullups","Flutter Kicks","Lunge","Plank knees to elbows","Burpees","Single Arm Swings","Reverse Crunch","Pushups","Plank","Wide Pushups"]
}

curl -X GET http://localhost:8080/workout?type=arms,back&limit=3
{
    "name":"Generated Workout",
    "exercises":["Superman Hold","Curls","Rows"]
}
```

## Build the Docker Image

```
docker build -t helidon-quickstart-mp .
```

## Start the application with Docker

```
docker run --rm -p 8080:8080 helidon-quickstart-mp:latest
```

Exercise the application as described above

## Deploy the application to Kubernetes

```
kubectl cluster-info                         # Verify which cluster
kubectl get pods                             # Verify connectivity to cluster
kubectl create -f app.yaml                   # Deploy application
kubectl get service helidon-quickstart-mp    # Verify deployed service
```

## Build a native image with GraalVM

GraalVM allows you to compile your programs ahead-of-time into a native
 executable. See https://www.graalvm.org/docs/reference-manual/aot-compilation/
 for more information.

You can build a native executable in 2 different ways:
* With a local installation of GraalVM
* Using Docker

### Local build

Download Graal VM at https://www.graalvm.org/downloads, the version
 currently supported for Helidon is `20.1.0`.

```
# Setup the environment
export GRAALVM_HOME=/path
# build the native executable
mvn package -Pnative-image
```

You can also put the Graal VM `bin` directory in your PATH, or pass
 `-DgraalVMHome=/path` to the Maven command.

See https://github.com/oracle/helidon-build-tools/tree/master/helidon-maven-plugin#goal-native-image
 for more information.

Start the application:

```
./target/helidon-quickstart-mp
```

### Multi-stage Docker build

Build the "native" Docker Image

```
docker build -t helidon-quickstart-mp-native -f Dockerfile.native .
```

Start the application:

```
docker run --rm -p 8080:8080 helidon-quickstart-mp-native:latest
```


## Build a Java Runtime Image using jlink

You can build a custom Java Runtime Image (JRI) containing the application jars and the JDK modules 
on which they depend. This image also:

* Enables Class Data Sharing by default to reduce startup time. 
* Contains a customized `start` script to simplify CDS usage and support debug and test modes. 
 
You can build a custom JRI in two different ways:
* Local
* Using Docker


### Local build

```
# build the JRI
mvn package -Pjlink-image
```

See https://github.com/oracle/helidon-build-tools/tree/master/helidon-maven-plugin#goal-jlink-image
 for more information.

Start the application:

```
./target/helidon-quickstart-mp/bin/start
```

### Multi-stage Docker build

Build the "jlink" Docker Image

```
docker build -t helidon-quickstart-mp-jlink -f Dockerfile.jlink .
```

Start the application:

```
docker run --rm -p 8080:8080 helidon-quickstart-mp-jlink:latest
```

See the start script help:

```
docker run --rm helidon-quickstart-mp-jlink:latest --help
```

## Creating the database
Steps taken to create workout database

## Connect to MySQL
```bash
docker container run --rm -d -p 3306:3306 \
    --env MYSQL_ROOT_PASSWORD=tiger \
    --name mysql \
    mysql:8
```

## Run MySQL commands inside container
```bash
docker exec -it mysql bash
mysql -p
```

## Copy initialization script

TODO: link to init_script.sql in repo

## Create SQL dump

```bash
mysqldump -p --databases workout > dump.sql
```

## Move dump out of container
```bash
cat dump.sql
```
Copy and paste into `/docker/data/dump.sql`
