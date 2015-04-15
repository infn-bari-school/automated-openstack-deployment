node 'stack-compute-01.school.cloud.ba.infn.it' {

  hiera_include('classes')
  hiera_include('stack-compute')

  
  $mon = hiera('ceph_mon')
  create_resources('ceph::mon', $mon)
  $key = hiera('ceph_key')
  create_resources('ceph::key', $key)
  $osd = hiera('ceph_osd')
  create_resources('ceph::osd', $osd)

  $ceph_pool = hiera('ceph_pools')
  create_resources('ceph::pool', $ceph_pool)

}
