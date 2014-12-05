<?php

$databases['default']['default'] = array(
    'driver' => 'mysql',
    'database' => '{{ DATABASE_NAME |  default("drupaldb") }}',
    'username' => '{{ DATABASE_USER | default("drupaluser") }}',
    'password' => '{{ DATABASE_PASSWORD | default("1234") }}',
    'host' => '{{ DATABASE_HOST | default("172.17.42.1") }}',
    'port' => {{ DATABASE_PORT | default(3306) }},
    'prefix' => '{{ DATABASE_PREFIX | default("drupal_") }}',
    'collation' => '{{ DATABASE_COLLATION | default("utf8_general_ci") }}',
);

$update_free_access = FALSE;
$drupal_hash_salt = '{{ DRUPAL_HASH_SALT }}';

{% if BASE_URL is defined %}
$base_url = '{{ BASE_URL }}';  // NO trailing slash!
{% else %}
$base_url = 'http://{{ DOMAIN }}';  // NO trailing slash!
{% endif %}

ini_set('session.gc_probability', 1);
ini_set('session.gc_divisor', 100);
ini_set('session.gc_maxlifetime', 200000);
ini_set('session.cookie_lifetime', 2000000);

# ini_set('pcre.backtrack_limit', 200000);
# ini_set('pcre.recursion_limit', 200000);
# $cookie_domain = '.example.com';

# $conf['site_name'] = 'My Drupal site';
# $conf['theme_default'] = 'garland';
# $conf['anonymous'] = 'Visitor';
# $conf['maintenance_theme'] = 'bartik';

# $conf['reverse_proxy'] = TRUE;
# $conf['reverse_proxy_addresses'] = array('a.b.c.d', ...);
# $conf['reverse_proxy_header'] = 'HTTP_X_CLUSTER_CLIENT_IP';

# $conf['omit_vary_cookie'] = TRUE;

# $conf['css_gzip_compression'] = FALSE;
# $conf['js_gzip_compression'] = FALSE;

# $conf['block_cache_bypass_node_grants'] = TRUE;

# $conf['locale_custom_strings_en'][''] = array(
#   'forum'      => 'Discussion board',
#   '@count min' => '@count minutes',
# );

# $conf['blocked_ips'] = array(
#   'a.b.c.d',
# );

$conf['404_fast_paths_exclude'] = '/\/(?:styles)\//';
$conf['404_fast_paths'] = '/\.(?:txt|png|gif|jpe?g|css|js|ico|swf|flv|cgi|bat|pl|dll|exe|asp)$/i';
$conf['404_fast_html'] = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN" "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><title>404 Not Found</title></head><body><h1>Not Found</h1><p>The requested URL "@path" was not found on this server.</p></body></html>';

# drupal_fast_404();

# $conf['proxy_server'] = '';
# $conf['proxy_port'] = 8080;
# $conf['proxy_username'] = '';
# $conf['proxy_password'] = '';
# $conf['proxy_user_agent'] = '';
# $conf['proxy_exceptions'] = array('127.0.0.1', 'localhost');

# $conf['allow_authorize_operations'] = FALSE;

/**
 * CUSTOM CONFIG
 */

# Disable for green in status report
$conf['drupal_http_request_fails'] = FALSE;

