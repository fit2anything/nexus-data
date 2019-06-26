for i in $(cat images.txt);
do 
  docker pull $i;
  docker tag $i localhost:8082/$i;
  docker push localhost:8082/$i; 
done
