FROM debian:12-slim
RUN apt-get update
RUN apt-get install -y openvpn curl psmisc
ADD profile.ovpn /
ADD resolv.conf /
ADD init.sh /
ADD passfile /
ENTRYPOINT ["/bin/bash", "/init.sh"]
