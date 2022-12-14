
docker build -t walosha/multi-client:latest -t walosha/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t walosha/multi-server:latest -t walosha/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t walosha/multi-worker:latest -t walosha/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push walosha/multi-client:latest
docker push walosha/multi-server:latest
docker push walosha/multi-worker:latest

docker push walosha/multi-client:$SHA
docker push walosha/multi-server:$SHA
docker push walosha/multi-worker:$SHA
