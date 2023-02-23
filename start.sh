set -e

echo "=== Execute docker-compose build... ==="
docker-compose build
echo "=== docker-compose build is done!! ==="

echo "=== Installing composer... ==="
docker-compose run php composer update --no-interaction
echo "=== Composer build is done!! ==="

echo "==== Migrating and seed database ==="
docker-compose exec php bin/console doctrine:fixtures:load --no-interaction
echo "==== Migrating and seed database is done!! ==="