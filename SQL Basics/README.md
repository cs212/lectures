# SQL Basics

This project contains two SQL examples. To login to the `mysql` database on campus, enter the following command from a lab computer:

```
mysql -h sql.cs.usfca.edu -u user## -D user## -p
```

where `user##` is your assigned username. Enter your password when prompted.

## Users and Phone Numbers 

Under the [`demo`](demo/) subdirectory, you can find the example from the [walkthrough](demo/SQL Demo.pdf) demonstrated in-class with users and phone numbers. This example focused on `CREATE` and `INSERT` statements to create tables and insert rows, and briefly introduced different types of `SELECT` statements.

You can load this example in `mysql` from a lab computer with the following command:

```
mysql> SOURCE /home/public/cs212/sql/demo.sql
```

## Professors and Courses

Under the [`contact`](contact/) subdirectory, you can find the example demonstrated in-class and in an [associated video](https://youtu.be/MZ-YVJETFAA) with contact and course information for several professors. This example focused primiarily on `SELECT` statements to combine information from three different tables. 

You can load this example in `mysql` from a lab computer with the following command:

```
mysql> SOURCE /home/public/cs212/sql/contact.sql
```
