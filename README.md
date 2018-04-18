# rasa-core-and-nlu-docker-compose
Rasa core and rasa nlu enviroment for local enviroment with moodbot example from official [Rasa Stack documentation](http://rasa.com/)


## Setup for Rasa Stack on local enviroment


### Clone project:
```
git clone https://github.com/sasastarcevic/rasa-core-and-nlu-docker-compose.git
```

### Go to project
```
cd rasa-core-and-nlu-docker-compose
```

### Build docker-compose file
```
docker-compose build
```
Note: First time it can take 5-10 min!


### Run docker-compose
```
docker-compose up -d
```

### Check status of Rasa Stack container
```
docker ps -as
```

### Rasa Stack container status
```
CONTAINER ID        IMAGE                COMMAND                  CREATED             STATUS              PORTS                                            NAMES                  SIZE
40ba123eecdb        rasacore_rasa_core   "./entrypoint.sh s..."   9 seconds ago       Up 8 seconds        0.0.0.0:5000->5000/tcp, 0.0.0.0:5005->5005/tcp   rasacore_rasa_core_1   525 kB (virtual 2.7 GB)
```

### Attach to rasa_core container
```
docker exec -it 40ba123eecdb bash
```

### Go to folder:
```
cd examples/moodbot/
```

### Execute run-rasa-server.sh script and wait until Rasa Core server is started
```
./run-rasa-core.sh
```

### Rasa Core server started sucessfully
```
Using TensorFlow backend.
2018-04-18 21:13:33+0000 [-] Log opened.
2018-04-18 21:13:33+0000 [-] Site starting on 5005
2018-04-18 21:13:33+0000 [-] Starting factory <twisted.web.server.Site object at 0x7fcca0c0abe0>
```


## Check Rasa Nlu Rest API
```
curl 'http://localhost:5000/parse?q=hello'
```
Note: [Official Rasa Nlu documentation](https://nlu.rasa.com/http.html)

## Check Rasa Core Rest API
```
curl -XPOST localhost:5005/conversations/default/parse -d '{"query":"hello there"}'
```
Note: [Official Rasa Core documentation](https://core.rasa.com/http.html)







