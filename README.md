# Random Workout Generator

Helidon MP project that includes REST operations to obtain exercises from a MySQL database.


## Build and run

```bash
docker-compose up
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

## Deploy the application to Kubernetes

```
kubectl cluster-info                         # Verify which cluster
kubectl get pods                             # Verify connectivity to cluster
kubectl create -f app.yaml                   # Deploy application
kubectl get service helidon-quickstart-mp    # Verify deployed service
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

## Paste initialization script

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
