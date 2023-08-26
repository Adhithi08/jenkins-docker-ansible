# jenkins-docker-ansible

This is a practice demo for Jenkins, Docker, Ansible

![Demo](demo.png)

If you use this repo, you should do the following:

* Make sure Jenkins credentials is configured.
* Edit the dev.inv to match your remote server.
* Uncomment ```#become: True``` in ```deploy-docker.yml```.
* The output should be in this url ```http://server_ip:8081/dockeransible/```


