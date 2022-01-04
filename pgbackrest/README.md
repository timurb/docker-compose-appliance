!!! PgBackRest is not able to run under Docker as PostgreSQL calls it back during WAL archival.

```
apt-get install pgbackrest
cat > /etc/postgresql/14/main/conf.d/pgbackrest.conf
archive_mode = on
archive_command = 'pgbackrest --stanza=main archive-push %p'
```

Edit `/etc/pgbackrest.conf`

```
sudo -u postgres pgbackrest --stanza=main --log-level-console=info stanza-create
```

Create cron files:
```
sudo -u postgres pgbackrest --stanza=main --log-level-console=info --type=full backup
```


