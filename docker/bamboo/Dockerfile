FROM atlassian/bamboo:9.6.12
USER root
# Add agent file
COPY atlassian-agent.jar /opt/atlassian/bamboo/
# Add agent to env
ENV JAVA_OPTS="-javaagent:/opt/atlassian/bamboo/atlassian-agent.jar ${JAVA_OPTS}"