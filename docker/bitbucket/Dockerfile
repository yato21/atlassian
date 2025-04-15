FROM atlassian/bitbucket:9.4.1
USER root
# Add agent file
COPY atlassian-agent.jar /opt/atlassian/bitbucket/
# Add agent to env
ENV JAVA_OPTS="-javaagent:/opt/atlassian/bitbucket/atlassian-agent.jar ${JAVA_OPTS}"