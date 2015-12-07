# Comprehensive Demo

Demonstrates simple user registration, login, and session tracking. This is a simplified example, and **NOT** secure. A more realistic application would use security-specific libraries for hashing passwords and generating salts, HTTPS, better (more secure) session tracking, and employ more defenses against input validation attacks like XSS and SQL injection.

## Downloading Connector/J

You need to download a driver to connect Java to our database server. You can download a MySQL Connector/J driver or a MariaDB Connector/J driver. Either way, you can create a third-party library in Eclipse and add the appropriate jar files. The download links are at:

- [MariaDB Connector/J](https://downloads.mariadb.org/connector-java/)
- [MySQL Connector/J](https://dev.mysql.com/downloads/connector/j/)

## Configuring JDBC

Modify `database.properties` with your MySQL username and password. If you
are connecting from on-campus, then set `hostname=sql.cs.usfca.edu` in the
properties file.

If you are connecting off-campus, then set `hostname=localhost:3307` in the
properties file, and create an SSH tunnel to forward anything sent to your
port 3307 to our MySQL server on campus.

```
ssh username@stargate.cs.usfca.edu -L 3307:sql.cs.usfca.edu:3306 -N
```

where `username` is your CS username. You will be prompted for your CS password.

If you are a Mac user, you can create a `tunnel.command` file with the SSH command you should use and give the file execute privileges. Then, you should be able to double-click the file to run the command.

If you are a Windows user, you need to setup the tunnel (or port forwarding) using a program like Putty. (Search for "Putty Port Forwarding" to find several guides.)

## Security Notes

Nothing we do regarding security will be effective unless we use encrypted communication between the client browser and the web server. For this, you should be using HTTPS instead of HTTP. 

Unless you are a security expert, I always recommend you use a package designed by security professionals for handling sensitive information (like username and passwords). However, there are some best practices guides out there. See the [OWASP](https://www.owasp.org/index.php/About_OWASP) [Password Storage Cheat Sheet](https://www.owasp.org/index.php/Password_Storage_Cheat_Sheet) for an example. 