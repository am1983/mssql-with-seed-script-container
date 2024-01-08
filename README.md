## Build Me
sudo docker build -t sqlserverplayground:2 .

## Run Me
sudo docker run -d --name SQLServerPlaygroundImage2 -p 1433:1433 sqlserverplayground:2

## Run Me with a persistant volume
sudo docker run -d --name SQLServerPlaygroundImage2 -p 1433:1433 -v TestDatabase:/var/opt/mssql sqlserverplayground:2