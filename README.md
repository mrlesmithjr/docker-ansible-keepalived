Repository Information
======================
Builds a [Docker] container running [KeepAliveD] ready for use.
Provisioning provided via [Ansible].

Usage
-----
Build the [Docker] image:
```
docker build -t docker-keepalived .
```
Or you can build using [Docker Compose]:

```
docker-compose build
```
Spin up container(s) using `docker`:
```
sudo docker run -d -i --net=host --privileged=true \
-e VIP_ADDRESS='192.168.202.102' -e VIP_INT='eth0' -e ROUTER_ID='50' \
-e ROUTER_PRI='150' -e STATE='MASTER' docker-keepalived
```
Or spin up container(s) using `docker-compose`:

Make sure to define the proper variables within the `docker-compose.yml` file:
```
environment:
  VIP_ADDRESS: '192.168.202.100'
  VIP_INT: 'eth1'
  ROUTER_ID: '50'
  ROUTER_PRI: '150'
  STATE: 'MASTER'
```
Then spin up the container(s):
```
docker-compose up -d
```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]

[Ansible]: <https://www.ansible.com/>
[Docker]: <https://www.docker.com>
[Docker Compose]: <https://docs.docker.com/compose/>
[KeepAliveD]: <http://www.keepalived.org>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
