# Easy deploy of multiple bees with docker

Method to easily run multiple bees on one server.
Recommended resources per bee:
2(v)CPU cores, 4GB RAM, ~70GB Disk,
SSD/NVMe is MANDATORY if you want to run more than 1 bee!


### you should have docker and docker compose on your system. Also you need access to a RPC endpoint and knowledge about your FIREWALL and or NAT to forward ports. the P2P port (1634) should be forwarded to bee server

clone repo:
```
git clone https://github.com/datafund/bee_scale.git
```

```
cd bee-scale
docker compose build
docker compose up -d
```

fund your node to deploy a chequebook contract by sending gETH to your wallet eth address (GNOSIS CHAIN!)
```
docker compose logs |grep -i 'cannot continue until there is at least min'
```

to scale up to 10 Bees:
```
docker compose up -d --scale bee=10
```

if you want more bees you need to change port ranges accordingly. as you can see in the example config the port range can scale only to 10.
```
    ports:
      - "36330-36339:1633"
      - "36340-36349:1634"
      - "36350-36359:1635"
```

## Updating

when theres an bee update edit the image tag in the bee Dockerile and rebuild.
```
vi bee/Dockerfile
docker build
docker up -d
```

