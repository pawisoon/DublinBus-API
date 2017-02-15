# DublinBus-API

#Test it: 

- Run it :) 

```
ruby dublinbus.rb -o 0.0.0.0
```

- Get json for all buses at chosen bus stop:

```
curl -i -X GET -H 'Content-Type: application/json' 127.0.0.1:4567/stop/784
```
Response:

```
HTTP/1.1 200 OK 
Content-Type: text/html;charset=utf-8
Content-Length: 817
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Server: WEBrick/1.3.1 (Ruby/1.9.3/2012-04-20)
Date: Wed, 15 Feb 2017 11:29:03 GMT
Connection: Keep-Alive

{"stopid":"784","errorcode":"0","data":[{"route":"39A","destination":"Ongar","due":"2"},{"route":"39","destination":"Ongar","due":"6"},{"route":"37","destination":"Blanchardstown SC","due":"6"},{"route":"38A","destination":"Damastown","due":"14"},{"route":"39A","destination":"Ongar","due":"15"},{"route":"39A","destination":"Ongar","due":"25"},{"route":"37","destination":"Blanchardstown SC","due":"26"},{"route":"38","destination":"Damastown","due":"34"},{"route":"70","destination":"Dunboyne","due":"34"},{"route":"39A","destination":"Ongar","due":"35"},{"route":"39","destination":"Ongar","due":"36"},{"route":"39A","destination":"Ongar","due":"46"},{"route":"37","destination":"Blanchardstown SC","due":"46"},{"route":"38A","destination":"Damastown","due":"54"},{"route":"39A","destination":"Ongar","due":"56"}]}%    
```

- Get json for one bus at choosen bus stop:

```
curl -i -X GET -H 'Content-Type: application/json' 127.0.0.1:4567/stop/784/39A
```

Response:

```
HTTP/1.1 200 OK 
Content-Type: text/html;charset=utf-8
Content-Length: 334
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Server: WEBrick/1.3.1 (Ruby/1.9.3/2012-04-20)
Date: Wed, 15 Feb 2017 11:29:58 GMT
Connection: Keep-Alive

{"stopid":"784","errorcode":"0","data":[{"route":"39A","destination":"Ongar","due":"1"},{"route":"39A","destination":"Ongar","due":"14"},{"route":"39A","destination":"Ongar","due":"24"},{"route":"39A","destination":"Ongar","due":"34"},{"route":"39A","destination":"Ongar","due":"45"},{"route":"39A","destination":"Ongar","due":"55"}]}% 

```


#Ref:
- All requests:
https://data.dublinked.ie/dataset/c9df9a0b-d17a-40ff-a5d4-01da0cf08617/resource/4b9f2c4f-6bf5-4958-a43a-f12dab04cf61/download/rtpirestapispecification.pdf

- Operator information:
https://data.dublinked.ie/cgi-bin/rtpi/operatorinformation?format=json

- Route information for bus 14 
https://data.dublinked.ie/cgi-bin/rtpi/routeinformation?routeid=14&operator=bac

- Information for single bus stop 784
https://data.dublinked.ie/cgi-bin/rtpi/busstopinformation?stopid=784

