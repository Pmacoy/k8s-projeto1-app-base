echo "Criando as imagens..."

docker build -t Pmacoy/k8s-projeto1-app-base backend/.
docker build -t Pmacoy/k8s-projeto1-app-base database/.

echo "Realizando o push das imagens..."

docker push Pmacoy/k8s-projeto1-app-base
dockker push Pmacoy/k8s-projeto1-app-base

echo "Criando serviços no cluster kubernetes..."

kubectl apply -f ./services.yml

echo "Criando os deployments..."

kubectl apply -f ./deployments.yml