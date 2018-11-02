#docker build -t leonciodiego/multi-client:latest -t leonciodiego/multi-client:$SHA -f ./client/Dockerfile ./client
#docker build -t leonciodiego/multi-server:latest -t leonciodiego/multi-server:$SHA -f ./server/Dockerfile ./server
#docker build -t leonciodiego/multi-worker:latest -t leonciodiego/multi-worker:$SHA -f ./worker/Dockerfile ./worker

#docker push leonciodiego/multi-client:latest
#docker push leonciodiego/multi-server:latest
#docker push leonciodiego/multi-worker:latest

#docker push leonciodiego/multi-client:$SHA
#docker push leonciodiego/multi-server:$SHA
#docker push leonciodiego/multi-worker:$SHA

kubectl apply -f k8s
#kubectl set image deployments/client-deployment client=leonciodiego/multi-client:$SHA
#kubectl set image deployments/server-deployment server=leonciodiego/multi-server:$SHA
#kubectl set image deployments/worker-deployment worker=leonciodiego/multi-worker:$SHA