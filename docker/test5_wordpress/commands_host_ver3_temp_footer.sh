path=$(docker volume inspect test5_wordpress_wordpress1_content | grep Mountpoint | grep '"Mountpoint": "[^"]*"' | awk -F'"' '{print $4}')
echo $path
# ls -anp $path
# ls -anp $path/wp-content/themes/kadence/
cp kadence_footer.php $path/wp-content/themes/kadence/footer.php
cat $path/wp-content/themes/kadence/footer.php

