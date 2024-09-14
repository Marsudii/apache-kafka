# APACHE KAFKA

## Software Requirement
- https://adoptium.net/temurin/ (DOWNLOAD JDK)
- https://kafka.apache.org/downloads (DOWNLOAD BINARY)


### FORMAT DIRECTORY (1 kali)
- create folder directory data in folder kafka_apps
- edit file log (log.dirs=data) in file config/kraft/server.properties
- Generate random-uuid  .\bin\windows\kafka-storage.bat random-uuid (PM3pXE4gSvORpt5Cu-HTSg)
- jalankan sekali saja 
```bash
.\bin\windows\kafka-storage.bat format --cluster-id PM3pXE4gSvORpt5Cu-HTSg --config .\config\kraft\server.properties
```

## RUN KAFKA
-  Running command
```bash
.\bin\windows\kafka-server-start.bat .\config\kraft\server.properties
```


## TOPIC
-  Create Topic ( )
```bash
.\bin\windows\kafka-topics.bat --bootstrap-server localhost:9092 --create --topic <name-topic>
```
- Show Topic 
``` bash
.\bin\windows\kafka-topics.bat --bootstrap-server localhost:9092 --list
```
- Delete Topic
```bash
.\bin\windows\kafka-topics.bat --bootstrap-server localhost:9092 --delete --topic <name-topic>
```

## Messages


### Producer
- Send message sebagai producer

```bash
.\bin\windows\kafka-console-producer.bat --bootstrap-server localhost:9092 --topic <name-topic>

```

### Consumer

- Menerima pesan data terbaru
```bash
.\bin\windows\kafka-console-consumer.bat  --bootstrap-server localhost:9092 --topic <name-topic>
```

- Menerima pesan dari data awal
```bash
.\bin\windows\kafka-console-consumer.bat  --bootstrap-server localhost:9092 --topic <name_topic> --from-beginning
```

#### Consumer Group

- jika menngunakan consumer grop maka hanya satu consumer saja yang mendapatkan data, misal ada dua consumer itu hanya satu saja  yang menerima

- jika ingin bergantian itu menggunakan partition

```bash
.\bin\windows\kafka-console-consumer.bat  --bootstrap-server localhost:9092 --topic <name_topic> --group <name-group> --from-beginning
```

## OFFSET
- informasi offset di simpan di consumer group



