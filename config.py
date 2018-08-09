import os

# The script is executed with a few environment variables set to the user
# supplied values.
environment = os.environ.get('environment', 'production')
task = os.environ.get('task', 'up')

# All other variables in UPPER_CASE are interpreted as environment variables
# passed during the execution of the docker-compose command. You can use anything
# Python provides.
ORGANIZATION = 'ejplatform'
TAG = 'latest'
THEME = 'default'

# Publication (example: Rancher)
LISTENERS = ['rancher']
RANCHER_URL = 'https://rancher.ejplatform.org'
RANCHER_ENVIRONMENT = environment
RANCHER_STACK = 'ej'
RANCHER_ACCESS_KEY = '1234'
RANCHER_SECRET_KEY = '1234'
