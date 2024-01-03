# docker-openvpn-client
A test for OpenVPN servers that I've containerized

## How to use
This was made more as a POC for testing an OpenVPN AS  
service I run for my company and to be reused for Dockers  
that require the use of OpenVPN and testing OpenVPN services.  

The files that need to be replaced or rewritten are profile.ovpn and passfile.  
That beingsaid, feel free to rewrite any and all other files to suit your needs.

## How to install
```
git clone https://github.com/LarsHLunde/docker-openvpn-client.git
cd docker-openvpn-client
docker build -t openvpn-client .
docker run -t \
  --device=/dev/net/tun \
  --cap-add=NET_ADMIN\
  --name openvpn-client \
  openvpn-client
docker start openvpn-client
```
