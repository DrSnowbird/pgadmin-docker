# PostgreSql Admin (pgadmin) Web GUI
* pgadmin4
# Run (Recommended for easy start-up)
It will pop up X11 to display pgadmin in Firefox browser.
```
./run.sh
```
## Connect to existing PostgreSQL Server
* See the screen shots in subdirectory "**./guide**".
* And, you just add a new server by entering the server/host and login information at **step-1 and step-2** and then "**Save**".
* If connection is successful, then the pgadmin UI will display the newly added server information.
Otherwise, you will see "error".
```
./guide/pgadmin-dashboard.png
./guide/pgadmin-web-UI.png
./guide/pgadmin-add-server-step-1.png
./guide/pgadmin-add-server-step-2.png
```

## Connect to a test PostgreSQL Server for test this pgadmin
1.) Launch a test PostgreSQL server (login/password as **postgres**/**mysecretpassword**) at port 5432. You can change password inside the file "run-postgres.sh" by modify the value of POSTGRES_PASSWORD.
```
./run-postgres.sh
```
2.) The above step will start a test PostgreSQL server in the same host you are in now. Then, you just follow the previous section "**Connect to existing PostgreSQL Server**" guide to set up the connection.

# Build
To build your local Docker images (instead of pulling automated pre-built image)
```
./build.sh
```

# References & Resources
* [**PgAdmin for PostgreSQL Database Server**](https://www.pgadmin.org/)

# See also
* [**MySQL Workbench for MySQL Database Server** Docker at "**openkbs/mysql-workbench**"](https://hub.docker.com/r/openkbs/mysql-workbench/)
