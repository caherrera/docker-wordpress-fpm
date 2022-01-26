tag=$(basename $(pwd))
echo $tag
read
docker build -t carlositline/wordpress:${tag} -f Dockerfile . &&
docker build -t carlositline/wordpress:${tag}-xdebug -f Dockerfile-xdebug . &&

docker push carlositline/wordpress:${tag} &&
docker push carlositline/wordpress:${tag}-xdebug

