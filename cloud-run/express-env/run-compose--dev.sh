export COMPOSE_PROJECT_NAME=$(basename `pwd` | sed 's/-/_/g')_dev
export IMAGE_BASE_NAME=$(basename `pwd`)
docker-compose \
-f compose/docker-compose.yml \
-f compose/docker-compose.dev.yml \
$@