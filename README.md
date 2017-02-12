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

- Get json for one bus at choosen bus stop:

```
curl -i -X GET -H 'Content-Type: application/json' 127.0.0.1:4567/stop/784/39A
```


#Ref:

https://data.dublinked.ie/dataset/c9df9a0b-d17a-40ff-a5d4-01da0cf08617/resource/4b9f2c4f-6bf5-4958-a43a-f12dab04cf61/download/rtpirestapispecification.pdf
