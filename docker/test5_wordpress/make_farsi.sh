docker exec -it test5_wordpress-wordpress1-1 bash -c "wp language core install fa_IR --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp site switch-language fa_IR --allow-root"

