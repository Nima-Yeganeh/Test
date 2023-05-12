helm repo list
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add brigade https://brigadecore.github.io/charts
helm search repo mysql
helm search repo database
helm search repo database --versions
helm search hub nginx
helm search hub nginx | wc -l
# https://artifacthub.io/packages/search?repo=bitnami&sort=relevance&page=1
# https://artifacthub.io/packages/helm/bitnami/redis
helm install my-redis bitnami/redis --version 17.10.3
kubectl get pods
kubectl get all
helm status my-redis
export REDIS_PASSWORD=$(kubectl get secret --namespace default my-redis -o jsonpath="{.data.redis-password}" | base64 -d)
echo $REDIS_PASSWORD
kubectl run --namespace default redis-client --restart='Never'  --env REDIS_PASSWORD=$REDIS_PASSWORD  --image docker.io/bitnami/redis:7.0.11-debian-11-r7 --command -- sleep infinity
kubectl exec --tty -i redis-client \
   --namespace default -- bash
# REDISCLI_AUTH="$REDIS_PASSWORD" redis-cli -h my-redis-master
# keys *
# SET mykeys "Hello"
# GET mykeys
# REDISCLI_AUTH="$REDIS_PASSWORD" redis-cli -h my-redis-replicas
helm list
kubectl create namespace redis
helm install -n redis my-redis bitnami/redis --version 17.10.3
kubectl get pods
kubectl get pods -n redis
helm list -n redis
helm list --all-namespaces
helm list -A
helm delete my-redis
helm delete my-redis -n redis
kubectl get pods -A
# https://artifacthub.io/
helm install my-mariadb bitnami/mariadb --version 12.2.2
kubectl get pods
kubectl get all
kubectl delete pod redis-client
helm status my-mariadb
kubectl get secret --namespace default my-mariadb -o jsonpath="{.data.mariadb-root-password}" | base64 -d
kubectl run my-mariadb-client --rm --tty -i --restart='Never' --image  docker.io/bitnami/mariadb:10.11.3-debian-11-r0 --namespace default --command -- bash
# mysql -h my-mariadb.default.svc.cluster.local -uroot -p my_database
# show databases;
# show tables;
kubectl create namespace database
kubectl get namespaces
helm install -n database --values helm_mariadb_custom_value_example.yaml my-mariadb bitnami/mariadb --version 12.2.2
kubectl get pods -A
helm status my-mariadb -n database
kubectl get secret --namespace database my-mariadb -o jsonpath="{.data.mariadb-root-password}" | base64 -d
kubectl run my-mariadb-client --rm --tty -i --restart='Never' --image  docker.io/bitnami/mariadb:10.11.3-debian-11-r0 --namespace database --command -- bash
helm repo update
helm upgrade -n database --values helm_mariadb_custom_value_example.yaml my-mariadb bitnami/mariadb --version 12.2.2
helm list -A
kubectl get secrets
kubectl get secrets -n database
helm uninstall my-mariadb
helm uninstall -n database my-mariadb
helm template -n database --values helm_mariadb_custom_value_example.yaml my-mariadb bitnami/mariadb --version 12.2.2
helm get values my-mariadb -n database
helm get values my-mariadb -n database --revision 1
helm get manifest my-mariadb -n database --revision 1
helm rollback my-mariadb 1 -n database
helm uninstall -n database my-mariadb --keep-history
helm history my-mariadb -n database
helm install my-mysql bitnami/mysql --version 9.9.1
helm install my-mysql bitnami/mysql --version 9.9.1 --wait --timeout 20m


