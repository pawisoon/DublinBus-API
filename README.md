# DublinBus-API

#Test it: 

- Run it :) 

```
ruby dublinbus.rb -o 0.0.0.0
```

- Get json for all buses at choosen bus stop:

```
curl -i -X GET -H 'Content-Type: application/json' 127.0.0.1:4567/stop/784
```

- Get json for one bus at choosen bus stop:

```
curl -i -X GET -H 'Content-Type: application/json' 127.0.0.1:4567/stop/784/39A
```
