class host_entry {

  # create a simple hostname and ip host entry
  host { 'syslog':
    ip => '10.10.10.10',
  }

  # create a fully qualified full host entry with an alias
  host { 'ntpserver.example.com':
    ip           => '10.100.10.50',
    host_aliases => 'timeserver',
  }

  # host entry with multiple aliases
  host { 'dashboard':
    ip           => '10.120.100.111',
    host_aliases => [ 'nagios', 'munin' ],
  }

}
