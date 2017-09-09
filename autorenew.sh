#echo new cron into cron file
echo "15 3 * * * /usr/bin/certbot renew --quiet" >> cerbot
#install new cron file
crontab certbot
rm certbot
