# 0x00. MySQL Advanced

Simple exercises to master advanced MySQL:

* **Tables & constraints**: primary/foreign keys, UNIQUE, NOT NULL
* **Indexes**: speed up queries
* **Stored routines**: procedures and functions
* **Views**: virtual tables
* **Triggers**: automated actions

**Setup**

```bash
service mysql start
# import sample DB
echo "CREATE DATABASE hbtn_0d_tvshows;" | mysql -uroot -proot
curl -s "https://.../hbtn_0d_tvshows.sql" | mysql -uroot -proot hbtn_0d_tvshows
```

**Run scripts**

```bash
cat <n>-*.sql | mysql -uroot -proot hbtn_0d_tvshows
```

Each `.sql` file:

* Starts with a comment
* Uses uppercase SQL
* Ends with a newline

*Author:Nicholas Odiwuor"

