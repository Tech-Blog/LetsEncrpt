#echo new cron into cron file
crontab -l > certbot
#echo new cron into cron file
echo "15 3 * * * /usr/bin/certbot renew --quiet" >> certbot
#install new cron file
crontab certbot
rm certbot
#(crontab -l && echo "15 3 * * * /usr/bin/certbot renew --quiet") | crontab
