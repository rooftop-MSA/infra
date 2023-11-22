sudo docker run -d -p 9090:9090 \
-v ./prometheus.yml:/etc/prometheus/prometheus.yml \
--cpus 1 --memory 1G \
prom/prometheus
