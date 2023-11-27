```
docker build -t ansible-control -f ansible/Dockerfile .
```

```
docker run -it -v ~/.ssh:/root/.ssh ansible-control
```

```
ansible-playbook -i ansible/hosts.yaml ansible/deployment.yaml --extra-vars "docker_tag=WORKSPACE external_ip=IP_ADDR"
```

```
ssh-keygen -R IP_ADDR
```

```
ansible-playbook -i IP_ADDR, --private-key=~/.ssh/id_rsa ansible/deployment.yaml -e ansible_user=mresham
```