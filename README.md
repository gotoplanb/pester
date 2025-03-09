 ```
_____  ______  _____ _______ ______  _____  
|  __ \|  ____|/ ____|__   __|  ___  |  __ \ 
| |__) | |__  | (___    | |  | |__   | |__) |
|  ___/|  __|  \___ \   | |  |  __|  |  _  / 
| |    | |____ ____) |  | |  | |____ | | \ \ 
|_|    |______|_____/   |_|  |______ |_|  \_\
```

# Setup

## GitHub

1. Create a repository variable for `BASE_URL`
1. Set `BASE_URL` to some reachable URL. [Pipedream](https://pipedream.com/) is an easy way to start.

## Local
1. Run `export BASE_URL='http://localhost:8000'`

# Run

## GitHub

### Automatically 

This `pester.yml` workflow will run every 30 minutes.

### Manually

1. Navigate to Actions > Pester
1. Click `Run workflow`

## Locally

1. Run `chmod +x run_all_scripts.sh`
1. Run `./run_all_scripts.sh`
