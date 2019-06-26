for i in $(cat image.txt);
do 
  docker pull $i;
  docker tag localhost:8082/$i localhost:8082/$i;
  docker push localhost:8082/$i; 
done