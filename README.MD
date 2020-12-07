# dockerExpressTest

Best practices
https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md#docker-run
https://expressjs.com/en/advanced/best-practice-performance.html#set-node_env-to-production
https://developer.mozilla.org/en-US/docs/Learn/Server-side/Express_Nodejs/deployment

Build
```bash
docker build -t detimage .
```

Run (may add '-e "NODE_ENV=production"' or set it in Dockerfile)
```
docker run -d --name="detcontainer" -p 35953:35953 detimage
```

Stop
```
docker stop detcontainer
```

Restart (if existed)
```
docker restart detcontainer
```

Check what process takes the port (then 'kill -9 PID' if needed)
```
lsof -i -P -n | grep 35953 
```

Check what inside of container:
1) create container (instead of running) from image 
   ```
   docker create --name="detcontainer" detimage
   ```

2) export filesystem to tar archive
   ```
   docker export -o detexport.tar detcontainer
   ```

3) delete container
   ```
   docker rm detcontainer
   ```
