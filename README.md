# Redis docker compose demo CI/CD pipeline


<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/redis"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Example CI/CD pipeline showing how to deploy a redis instance to elestio.

# Once deployed ...

You can can open Redis Insight to manage your redis instance here:

    https://[CI_CD_DOMAIN]/
    Login: root
    password: [SOFTWARE_PASSWORD] (set in env var)

You can connect to your server with any Redis client:

    Host: [CI_CD_DOMAIN]
    Port: 26379
    Password: [SOFTWARE_PASSWORD] (set in env var)

CLI:

    redis-cli -h [CI_CD_DOMAIN] -p 26379 -a '[SOFTWARE_PASSWORD]'

Service URI:

    redis://:[SOFTWARE_PASSWORD]@[CI_CD_DOMAIN]:26379/0
