node 'ceph02.school.cloud.ba.infn.it' {


  hiera_include('stack-ceph')

  
  $mon = hiera('ceph_mon')
  create_resources('ceph::mon', $mon)
  $key = hiera('ceph_key')
  create_resources('ceph::key', $key)
  $osd = hiera('ceph_osd')
  create_resources('ceph::osd', $osd)

  $ceph_pool = hiera('ceph_pools')
  create_resources('ceph::pool', $ceph_pool)
$ale = "-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1.4.11 (GNU/Linux)

mQINBE+5bugBEADP31ZaQNvhOOQxjDwL/VYDLhtaGq4Q74FCY23uSQAMboKwo4JB
Te2JTSwBwU/RAPuWTrlKaQBPS30VF5SJN9t16llmoBWqhtBVf/lhQonC/28dTB6D
KR7Ahiz4Nv2g9m1sLau86JblQuODo8vWHXxahYSLQSyyxIXnlE4K3c1k0S4feLqu
ZxFtc2cFrQ/bUX9zXg6PXjDVAfY2R+x1JKGkVO/iwP+cjS1tCbvzdKcnQJEXpBwd
yHvDBuF3IjuR9JgrBhb1ALqexhFKHzG1kHFfOZ3DLVohig68lfyjCepGgo0BPOyy
S3Yk0QMumEaj9zRJurg49zWemX05XiBGt8SeCFxNUjXGYDIzSQ30K8fXmyjB74CW
EUDUuTpTt7oZF9jKCjfKmQwvW4GgJ4J0FSwiorXPK27didjLJCnkTt43v0ZETMRW
aADtiKFHl7lICuRmeXbd+6VkVqmoOz7ialMHnZ2KrHlqTcTPMd4llC4ayi2qS6Qb
dIi1g9fa5YMS6I7yGxmW4AWwNy7SE8DsTja0aGFR9k432r+Vxtr52jrmP2vVexva
CVaQkdk2/KEY3MjCPngiZwoTcOONYvNMvQaPrUtRuatcWJOgWsQVedY/UBxk968n
JzfnNDngbcYDRnOD8wLWyBGyYbOdg1ucckLXFEtPVXoRER5JHMcYhyh+/QARAQAB
tCRDZXBoIFJlbGVhc2UgS2V5IDxzYWdlQG5ld2RyZWFtLm5ldD6JAjgEEwECACIF
Ak+5bugCGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEH6/3V0X7TFtSjEP
/A2pazEPwXrlQAHAjcXaFcPguKnXFrXRfbLpM9aZPR5gxH8mWl9RhEW/nL5pBf6A
Tx7lQ4F/h9bDlf4/bejuxUflkrJEPVWkyPf3hvImjSBs+LBTk4OkpUJwYd9AynsG
551Q0+6qxFfRVLCR6rLPHbMquXsKHROsSumEGUNrsMVC87gvtXEe/AOLUuRLEbjU
QqGKP2+mvliizU844a11B/bXViXhkNZw66ESAuqOw0dVPTo6aPLhuSDDrGEHQNTz
BsUseiUq795DqTE/5sL3lbTPrT1hKoIJFixYvaYBdygDgovsAi33nPn8UPitS5aD
zGJ/ByDdnI4QW15NN1diMp+BuvOCWLpMaxVQNflARlxxtfIfnvaKjgccr1YOyT91
5tlbdr0y05r1uYZjYU5/4llilypUgzzQB1jeetr06fOpVvswAAWQJiS5JJU+V84W
r4sIBhZzGw1uvqNxIBWtk85W1ya7CmisRO7PZYW5lsLxZ48BxZhr45ar6/iDYreT
OOeP1f9GoJW0X+FAocNc/pobY02MhB/BXV1LRM3lY+yOK3sskspnMihMqP7tSfop
iJRtfXMLNdRRJFVZ5VSr1MCDK5RPQaqVsuvdtVqOJr1RwAQPjjzisOh+NYmvabkd
cVxjSV5DX0fMODr2l7cAXxJjZsAs6AlnQOGPg/NXKdkZiEYEEBECAAYFAk+5cEAA
CgkQ2kQg7SiJlcjJIACgsGpIw9ShLBciO3Y349ja7ILjC8cAnRrqoIpFxUrSIJF/
8+w98auNwA18
=uX7x
-----END PGP PUBLIC KEY BLOCK-----
"

  file { '/root/ceph_repo_key':
    content => $ale,

}
  File['/root/ceph_repo_key'] -> Apt::Key['ceph']
}
