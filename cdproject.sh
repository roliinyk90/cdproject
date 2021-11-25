function cdproject() {
        local username="${1}"
        local ticketId="${2}"
        local mcommand="${3}"
        local php="${4:-php74}"
if [ -z "${username}" ]; then
    echo "first argument username is unset or set to the empty string"
return 1
fi

if [ -z "${ticketId}" ]; then
    echo "second argument ticketId is unset or set to the empty string"
return 1
fi

if [ -z "${mcommand}" ]; then
        cd "/home/${username}/public_html/${ticketId}/"
else
        cd "/home/${username}/public_html/${ticketId}/"
        ${php} bin/magento ${mcommand}
fi
}


function cdsql() {
        local username="${1}" # $1 represent first argument
        local ticketId="${2}"
if [ -z "${username}" ]; then
    echo "first argument username is unset or set to the empty string"
return 1
fi

if [ -z "${ticketId}" ]; then
    echo "second argument ticketId is unset or set to the empty string" 
return 1
fi

        cd "/home/${username}/public_html/${ticketId}/"
        export DB_NAME=$(grep [\']db[\'] -A 20 app/etc/env.php | grep dbname | head -n1 | sed "s/.*[=][>][ ]*[']//" | sed "s/['][,]//");
export MYSQL_HOST=$(grep [\']db[\'] -A 20 app/etc/env.php | grep host | head -n1 | sed "s/.*[=][>][ ]*[']//" | sed "s/['][,]//");
export DB_USER=$(grep [\']db[\'] -A 20 app/etc/env.php | grep username | head -n1 | sed "s/.*[=][>][ ]*[']//" | sed "s/['][,]//");
export MYSQL_PWD=$(grep [\']db[\'] -A 20 app/etc/env.php | grep password | head -n1 | sed "s/.*[=][>][ ]*[']//" | sed "s/[']$//" | sed "s/['][,]//");
mysql -h $MYSQL_HOST -u $DB_USER --password=$MYSQL_PWD $DB_NAME -U
}
