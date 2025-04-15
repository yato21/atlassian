FROM atlassian/confluence:9.3.0-m179-jdk17
USER root
# Add agent file
COPY atlassian-agent.jar /opt/atlassian/confluence/
# Add agent to env
RUN echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/confluence/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/confluence/bin/setenv.sh