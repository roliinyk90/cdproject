function cdproject() {
        local username="${1}" # $1 represent first argument
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
