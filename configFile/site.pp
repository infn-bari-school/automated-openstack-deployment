import 'nodes/*.pp'

node default {

  hiera_include('default')

}
