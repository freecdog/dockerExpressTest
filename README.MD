# dockerExpressTest

Build
```
docker build -t detimage .
```

Run
```
docker run -p 35953:35953 -d detimage
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
   
