HTTP Demo
=============================

First, find the IP address for a webserver. Use `www.cs.usfca.edu` as the example:

```
nslookup www.cs.usfca.edu
```

Then, telnet into the server using port 80 to communicate directly with the web server:

```
telnet 138.202.170.2 80
```

Try out several different HTTP commands:

```
GET /~sjengle/index.html HTTP/1.1
Host: www.cs.usfca.edu
```
  
```
HEAD /~sjengle/index.html HTTP/1.1
Host: www.cs.usfca.edu
```
  
```
HEAD /~sjengle/index.html HTTP/1.1
``` 

```
HEAD /~sjengle/nowhere.html HTTP/1.1
Host: www.cs.usfca.edu
```

```
DELETE /~sjengle/index.html HTTP/1.1
Host: www.cs.usfca.edu
```

```
OPTIONS /~sjengle/index.html HTTP/1.1
Host: www.cs.usfca.edu
```
