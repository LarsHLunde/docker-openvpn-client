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
# Copy over passfile and profile.ovpn for your config
docker build -t openvpn-client .
docker run -it \
  --device=/dev/net/tun \
  --cap-add=NET_ADMIN\
  --name openvpn-client \
  openvpn-client
```
to run the test again, run:  
```
docker start openvpn-client
```

## Developers note
### Version 1.0
In the current version, you need to rebuild the docker  
in order to modify username, password or ovpn file.  
I may change it in the future, but know about this snag in  
the current version, and as previously mentioned, feel free to branch.  
