Run commands from root of the repo
```
docker build -t ansible-control -f ansible/Dockerfile .
```

```
docker run -it -v ~/.ssh:/root/.ssh ansible-control
```

If you get different IP_ADDR, remove it from know hosts using this
```
ssh-keygen -R IP_ADDR
```

2 ways of running the playbook:
```
ansible-playbook -i ansible/hosts.yaml ansible/deployment.yaml --extra-vars "docker_tag=WORKSPACE external_ip=IP_ADDR"
```


```
ansible-playbook -i IP_ADDR, --private-key=~/.ssh/id_rsa ansible/deployment.yaml -e ansible_user=mresham --extra-vars "docker_tag=WORKSPACE external_ip=IP_ADDR"
```