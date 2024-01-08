# Wait for SQL Server to come up since it wants to be a turd.

echo 'Waiting on SQL Server'

sleep 90s

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P P@ssword -i init_database.sql