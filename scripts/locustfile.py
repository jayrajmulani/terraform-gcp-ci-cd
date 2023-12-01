# Need to install locust prior to running. Only for local testing

from locust import HttpUser, task, between

class MyUser(HttpUser):
    wait_time = between(1, 3)

    @task
    def my_task(self):
        # Define your HTTP request here
        self.client.get("/")

# Running with a linear increase in user count
# locust -f locustfile.py -H EXTERNAL_IP --modern-ui
