module Machineid
  module Linux
    DBUSPATH = "/var/lib/dbus/machine-id"
	  # dbusPathEtc is the default path for dbus machine id located in /etc.
	  # Some systems (like Fedora 20) only know this path.
	  # Sometimes it's the other way round.
	  DBUSPATHETC = "/etc/machine-id"

    def self.machineID
      begin
        File.read(Machineid::Linux::DBUSPATH)
      rescue
        File.read(Machineid::Linux::DBUSPATHETC)
      end
    end
  end
end


