Example of web server by nginx running in a container.

The `index.html` is copied in the image while the `file.css` stylesheet
on the host is bind mounted.

Port chosen is `1234`. Remember to port forward to open the webpage in the browser.

### To build and run
```
docker build -t hello_webpage:1.x.x .
docker run -d -p 1234:80 -v ./file.css:/usr/share/nginx/html/file.css hello_webpage:1.x.x
```
