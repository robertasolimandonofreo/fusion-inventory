FROM robertasolimandonofreo/debian_cherokee:latest 

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    fusioninventory-agent \
    fusioninventory-agent-task-network \
    fusioninventory-agent-task-esx \
    fusioninventory-agent-task-deploy
RUN echo "deb http://httpredir.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list

COPY agent.cfg /etc/fusioninventory/agent.cfg
CMD [ "fusioninventory-agent" ]
EXPOSE 62354