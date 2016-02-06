# http://ejohn.org/blog/keeping-passwords-in-source-control/
NY: decrypt_conf encrypt_conf

CONF_FILE=.env

requirements:
	@hash openssl 2>/dev/null || { echo >&2 "OpenSSL is required but it's not installed. Aborting."; exit 1; }

decrypt_conf: requirements
	openssl cast5-cbc -d -in ${CONF_FILE}.cast5 -out ${CONF_FILE}
	chmod 600 ${CONF_FILE}

encrypt_conf: requirements
	openssl cast5-cbc -e -in ${CONF_FILE} -out ${CONF_FILE}.cast5
