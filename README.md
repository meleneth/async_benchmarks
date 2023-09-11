docker compose build
docker compose start

curl -H "username: SomeNameHere" http://localhost:8000

docker run -it blazemeter/taurus http://localhost:8000/

ab -n 50000 -c 128 http://localhost:8100/

check the docker-compose for exact details

8100 - ruby http-async
8110 - nginx
8120 - c_notrix raw C, multithreaded (currently bugged - might be restarting every request)

