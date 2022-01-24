import time
from locust import HttpUser, task, between

class JobApis(HttpUser):
    @task
    def list_jobs(self):
        self.client.get("/api/v1/jobs")
