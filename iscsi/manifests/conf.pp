##
# iSCSI initiator Module conf.pp
#
# Computer Action Team
# Maseeh College of Engineering and Computer Science
#

define iscsi::conf(
  $isns_address = "",
  $isns_port = "",
  $node_startup = "",
  $node_session_auth_authmethod = "",
  $node_session_auth_username = "",
  $node_session_auth_password = "",
  $node_session_auth_username_in = "",
  $node_session_auth_password_in = "",
  $discovery_sendtargets_auth_authmethod = "",
  $discovery_sendtargets_auth_username = "",
  $discovery_sendtargets_auth_password = "",
  $discovery_sendtargets_auth_username_in = "",
  $discovery_sendtargets_auth_password_in = "",
  $node_session_timeo_replacement_timeout = "",
  $node_conn_timeo_login_timeout = "",
  $node_conn_timeo_logout_timeout = "",
  $node_conn_timeo_noop_out_interval = "",
  $node_conn_timeo_noop_out_timeout = "",
  $node_session_err_timeo_abort_timeout = "",
  $node_session_err_timeo_lu_reset_timeout = "",
  $node_session_initial_login_retry_max = "",
  $node_session_cmds_max = "",
  $node_session_queue_depth = "",
  $node_session_xmit_thread_priority = "",
  $node_session_iscsi_InitialR2T = "",
  $node_session_iscsi_ImmediateData = "",
  $node_session_iscsi_FirstBurstLength = "",
  $node_session_iscsi_MaxBurstLength = "",
  $node_conn_iscsi_MaxRecvDataSegmentLength = "",
  $discovery_sendtargets_iscsi_MaxRecvDataSegmentLength = "",
  $node_conn_iscsi_HeaderDigest = "",
  $node_conn_iscsi_DataDigest = "",
  $node_session_iscsi_FastAbort = "",
  $node_session_iscsi_FastAbort = "",
  $ensure = "present"
  ) {

  file { "/etc/iscsid/iscsid.conf" :
  	  content => template("iscsid.conf.erb"),
      ensure => $ensure,
      owner => root,
      group => root,
      mode => 0600
  }
}
