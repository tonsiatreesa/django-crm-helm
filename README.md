# django-crm-helm
django crm from docker compose to helm chart

To run this with `docker compose`:

```bash
ansible-playbook up.yml
```

This will create the database. The first time you run this you will need to create a super user account.

```bash
docker compose exec crm sh -c "python manage.py setupdata"
```

This will display a super user name and password. Save this somewhere as it can't be re-retrieved.

## Marks

Part 1. Use one student's truenas for nfs storage for your database. You can use [this article](https://www.dontpanicblog.co.uk/2024/12/20/nfs-shares-in-docker/) to help (4 marks)

Part 2. Create a repository on one of your gitea(s) by cloning [this repository](https://github.com/rhildred/django-crm-helm), or atomic crm, if you have it working already. Add your teammates as collaborators (4 marks)

Part 3. Create a jenkinsfile or gitea action that updates the image from the included Dockerfile on your gitea docker image repository every time code is pushed (4 marks)

Part 4. Use a cloudflared ingress to expose your crm from your cluster to the internet (4 marks)

Part 5. Use Kompose to create a helm chart and modify up.yaml and down.yaml to run your image on kubernetes and expose it with a cloudflared tunnel (4 marks).

Total. 20

I hope that this works better than what I had before. Notice that I started with the mysql setup that you are used to from PROG8850. Hopefully the docker-compose.yml file will take you from working code to working code!