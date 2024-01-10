# Apache Kafka

Software Requirement 
- Check java version yang masih disupport  https://endoflife.date/eclipse-temurin
- Sesuaikan Java pada sistem operasi lalu download (21 (LTS) or higher) https://adoptium.net/temurin/releases/
- Download Apache Kafka (2.13 or higher) https://kafka.apache.org/downloads

  
## Data Directory
By default kafka menyimpan data pada **/tmp/kraft-combined-logs** dimana data yang disimpan ini akan hilang jika pc/laptop di restart maka dari itu ubah lokasi penyimpanan data directory tersebut.
- buat folder data pada kafka_2.13-3.6.1/data
- ubah lokasi data directory ke folder data yang sudah dibuat kafka_2.13-3.6.1/config/kraft/server.properties
- line 78 by default **log.dirs=/tmp/kraft-combined-logs** ubah menjadi **log.dirs=data**
- save

### 1. Format Data Directory
Step ini hanya dilakukan sekali saja jika baru menginstal kafka 
- generate random uuid pada kafka command
```bash
 ./bin/kafka-storage.sh random-uuid
result example (axSxJGS6Tt6HQi5Tzh6YIA)
```
- copy random uuid (axSxJGS6Tt6HQi5Tzh6YIA)
- ./bin/kafka-storage.sh format --cluster-id < uuid-generate > --config < lokasi-folder-config >
```bash
 ./bin/kafka-storage.sh format --cluster-id axSxJGS6Tt6HQi5Tzh6YIA --config config/kraft/server.properties  
```
### 2. Start/Run Kafka
```bash
 ./bin/kafka-server-start.sh config/kraft/server.properties
```
## Topic
Data yang di insert di kafka itu wajib mempunyai tempat, tempat/wadah itu disebut topic, jika di database sql misal tabel atau di nosql adalah collection.
Data di topic disimpan dalam format Log, log tersebut yang di insert append-only (hanya bertambah), berurutan sesuai dengan urutan data masuk

### Create Topic
Default bootstrap-server kafka 
bootstrap-server:localhost:9092


