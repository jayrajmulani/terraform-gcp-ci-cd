```
docker build -t ansible-control -f ansible/Dockerfile .
```

```
docker run -it -v ~/.ssh:/root/.ssh ansible-control
```

```
ansible-playbook -i ansible/hosts.yaml ansible/deployment.yaml
```