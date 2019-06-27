for i in $(cat images.txt);
do 
  docker pull $i;
  docker tag $i localhost:8091/$i;
  docker push localhost:8091/$i; 
done
