# GeoLogMapper

This is a collection of different utils that creates a Choropleth Map based of the times that a country has access a web server. For the moment it is on a really alpha state and it is not working, as it need some tweeks.

## Deployment

For deploying this you can use the ``docker-compose.yml`` file that setups and exposes the map in port 82. Inside the docker-compose file it has the 3 tools image build path also it does have a mariadb database for saving the requests.

## TODOs

- [ ] Modify the ``docker-compose.yml`` file to mount the table creation files to create the tables on first startup.
- [ ] Add a database class to the apache logger
- [ ] Adapt other web servers
- [ ] Create different honeypot websites
