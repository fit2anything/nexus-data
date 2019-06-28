docker login localhost:8092 -u admin -p admin123
for i in $(cat images.txt);
do
  docker pull $i;
  docker tag $i localhost:8084/$i;
  docker push localhost:8084/$i;
done
