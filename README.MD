# dockerExpressTest

Build
```bash
docker build -t detimage .
```

Run
```
docker run -p 35953:35953 -d --name="detcontainer" detimage
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
