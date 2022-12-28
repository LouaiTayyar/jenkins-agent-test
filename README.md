# Jenkins Remote Agent
## SSH configuration
First you need to create an SSH key pair so that you can configure the agent in the Jenkins controller console and give it the private key. Then, to give the remote server/agent the public key it needs to make the link with the Jenkins controller. 
### Generating an SSH key pair
You can use the following command to generate the SSH key pair ( press enter twice at passphrase phase if you want to leave it empty ):
```shell script
ssh-keygen -f ~/.ssh/jenkins_agent_key
```
### Create a Jenkins SSH credential 
Go to Jenkins Dashboard>Manage Jenkins>Manage Credentials>Add Credentials and add the private key that we created in the previous step. 
## Creating the agent
### Docker agent
One approach is to create a docker agent container, passing it the public key as a variable, exposing it to port 22, or 4444 if 22 is already in use by the host machine. This could be done using the following command:
```shell script
docker run -d --rm --name=agent1 -p 22:22 \
-e "JENKINS_AGENT_SSH_PUBKEY=[your-public-key]" \
jenkins/ssh-agent:alpine
```
> **Note:** Having --rm will remove the container if it stops any point, beware of that if you ever find yourself wondering why the container is no longer there after a reboot for example.
### Server VM
The other approach, which is what i used, is to make the agent a VM i have hosted on a server. This is done by first installing openjdk on that server since java is a requirement for being a Jenkins controller or agent. 

####  OpenJDK install command exmaple

Second, you will need to create a new user called jenkins and give it the following user directory: /home/jenkins, that we will later use to store the ssh public key as well as all the jobs given to this agent. 



>**Note**: The directory could be made in any location, just make sure that the same directory is used when configuring the agent in the later steps.