rsync --exclude vendor .env -r -e "ssh -i deploy_rsa -o 'StrictHostKeyChecking no'" $TRAVIS_BUILD_DIR/. root@46.101.45.168:/var/www/sub/api
ssh -i deploy_rsa -o 'StrictHostKeyChecking no' root@46.101.45.168 "cd /var/www/sub/api && composer install"

rsync --exclude vendor --exclude .env -r -e "ssh -o 'StrictHostKeyChecking no'" . root@46.101.45.168:/var/www/sub/api
ssh -o 'StrictHostKeyChecking no' root@46.101.45.168 "cd /var/www/sub/api && composer install"

