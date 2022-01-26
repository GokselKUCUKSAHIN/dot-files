## MongoDb Enable Authentication and Admin User

### Steps:
1. `sudo apt-get install -y mongodb-org` _- in new terminal_


3. `mongo --port 27017` _- in new terminal_

4. `use admin`

**For Mongo Version 2.**
```js
db.createUser(
{
    user: "tom",
    pwd: "jerry",
    roles: [
              { role: "userAdminAnyDatabase", db: "admin" },
              { role: "readWriteAnyDatabase", db: "admin" },
              { role: "dbAdminAnyDatabase", db: "admin" },
              { role: "clusterAdmin", db: "admin" }
           ]
})
```
**For Mongo Version 3.**
```js
db.createUser(
   {
       user: "tom", 
       pwd: "jerry", 
       roles:["root"]
   })
```
5. `sudo /etc/init.d/mongod stop` OR `sudo service mongod stop` _- in new terminal_

6. `sudo /etc/init.d/mongod start` OR `sudo service mongod start`

7. Restart your system

8. `sudo mongod --auth --port 27017 --dbpath /var/lib/mongodb` _- in new terminal_

9. `mongo --port 27017 -u "tom" -p "jerry" --authenticationDatabase "admin"` _- in new terminal_

_Note : step 9 is **the most** important step._

it will give Output on terminal like
```bash
MongoDB shell version: 2.6.11
connecting to: 127.0.0.1:27017/test
>
```
