## docker run --name SQLServerTestLab -e "ACC
## EPT_EULA=Y" -e "MSSQL_SA_PASSWORD=P@ssword" -p 1433:1433 
## -d mcr.microsoft.com/mssql/server:2022-latest

FROM mcr.microsoft.com/mssql/server:2022-latest
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=P@ssword
ENV HOSTNAME=MSSQL_SERVER
WORKDIR /database_init
COPY init_database.sql seeddatabase.sh entrypoint.sh ./
CMD /bin/bash ./entrypoint.sh
EXPOSE 1433