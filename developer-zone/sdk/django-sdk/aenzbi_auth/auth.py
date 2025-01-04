import requests

class AenzbiAuth:
    BASE_URL = "https://api.aenzbi.com"

    def __init__(self, api_key):
        self.api_key = api_key

    def login(self, username, password):
        url = f"{self.BASE_URL}/auth/login"
        payload = {
            "username": username,
            "password": password
        }
        headers = {
            "Authorization": f"Bearer {self.api_key}"
        }
        response = requests.post(url, json=payload, headers=headers)
        return response.json()
