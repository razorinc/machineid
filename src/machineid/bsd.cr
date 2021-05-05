module Machineid
  module Bsd
    HOSTIDPATH = "/etc/hostid"

    def self.machineID()
      begin
        read_host_id
      rescue
        read_kenv
      end
    end


    def read_host_id
      File.read(HOSTIDPATH)
    end

    def read_kenv
      user_input = ["-q", "smbios.system.uuid"]
      process = Process.new("kenv", user_input , output: Process::Redirect::Pipe)
      process.output.gets_to_end # => "hello; rm -rf *"
    end

  end
end
