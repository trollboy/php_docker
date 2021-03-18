# Universal PHP Docker local dev
### The answer to how do I get started in PHP


[![N|Solid](https://www.php.net//images/logos/php-power-micro.png)](https://php.net) [![N|Solid](https://www.mysql.com/common/logos/includes-mysql-88x31.png)](https://php.net)

### Description


### Usage

#### Pre-requisites
* Install [Docker](https://docs.docker.com/get-docker/)
* Install [Git](https://git-scm.com/downloads)

#### Checking out
Assuming you're using `MyProjectName` as your project, here is how to set up the environments.  First you'll want to find the cocktail of settings in the handy chart below.  Use that to replace `%%token%%` in the example commands below. Next you'll want to decide if you want `Production` or `Development`. For 99.9999% of all cases I'm going to _*strongly*_ recommend that you use Development.
> *What is the difference between Development and Production?*
> Production copies your files over to the container, making it essentially immutable. Development mounts the local folders of app, data & configs as Volumes to allow for live, real time editing. 

*Development*
```
git clone git@github.com:trollboy/php_docker.git MyProjectName
cd MyProjectName
docker-compose up %%token%%-dev
```
*Production*
```
git clone git@github.com:trollboy/php_docker.git MyProjectName
cd MyProjectName
docker-compose up %%token%%
```

| TOKENS  | PHP7  | PHP8  |
|---|---|---|
| Standalone        | `php7`                | `php8` |
| MySQL             | `php7-mysql`          | `php8-mysql` |
| MSSql             | `php7-mssql`          | `php8-mssql` |
| Redis             | `php7-redis`          | `php8-redis` |
| MemCache          | `php7-memcache`       | `php8-memcache` |
| Mysql+Memcache    | `php7-memcache-mysql` | `php8-memcache-mysql` |
| Mysql+Redis       | `php7-redis-mysql`    | `php8-redis-mysql` |
| MSSql+Memcache    | `php7-memcache-mssql` | `php8-memcache-mssql` |
| MSSql+Redis       | `php7-redis-mssql`    | `php8-redis-mssql` |

### Advanced Usage

