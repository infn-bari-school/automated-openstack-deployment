import 'nodes/*.pp'

hiera_include('default')

$hosts = hiera('cloud_school_hosts')
create_resources(host, $hosts)
