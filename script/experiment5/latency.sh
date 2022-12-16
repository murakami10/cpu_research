


for i in `seq 1 11`; do

  sleep 7

  s1LatencyP50=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.50, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az1-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])
  s2LatencyP50=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.50, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az2-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])

  s1LatencyP60=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.60, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az1-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])
  s2LatencyP60=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.60, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az2-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])

  s1LatencyP70=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.70, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az1-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])
  s2LatencyP70=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.70, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az2-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])

  s1LatencyP80=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.80, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az1-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])
  s2LatencyP80=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.80, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az2-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])

  s1LatencyP85=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.85, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az1-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])
  s2LatencyP85=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.85, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az2-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])

  s1LatencyP90=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.90, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az1-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])
  s2LatencyP90=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.90, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az2-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])

  s1LatencyP95=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.95, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az1-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])
  s2LatencyP95=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.95, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az2-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])

  s1LatencyP98=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.97, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az1-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])
  s2LatencyP98=$(curl -s 'http://localhost:9090/api/v1/query' --data-urlencode 'query=histogram_quantile(0.97, sum(irate(istio_request_duration_milliseconds_bucket{reporter="source", app="client-node1", destination_workload="az2-server"}[1m])) by ( destination_canonical_service,destination_workload_namespace,source_canonical_service,source_workload_namespace, le ) )' | jq -r .data.result[0].value[1])

  echo ${s1LatencyP50} "," ${s2LatencyP50} "," ${s1LatencyP60} "," ${s2LatencyP60} "," ${s1LatencyP70} "," ${s2LatencyP70} ","  ${s1LatencyP80} "," ${s2LatencyP80} "," ${s1LatencyP85} "," ${s2LatencyP85} "," ${s1LatencyP90} "," ${s2LatencyP90} "," ${s1LatencyP95} "," ${s2LatencyP95} "," ${s1LatencyP98} "," ${s2LatencyP98} >> result/$2/$1/latency/latency.txt

  sleep 3

done


echo "" >> result/$1/latency/latency.txt
echo "--------------------------------" >> result/$1/latency/latency.txt
echo "" >> result/$1/latency/latency.txt
