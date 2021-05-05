###
##
###
require "./machineid/protected_id"
{% if flag?(:linux) %}
  require "./machineid/linux"
{% end %}
{% if flag?(:darwin) %}
  require "./machineid/darwin"
{% end %}
{% if flag?(:bsd) %}
  require "./machineid/bsd"
{% end %}

module Machineid
  VERSION = "0.1.0"
  extend self

  def machineid
    output = nil
    {% if flag?(:linux) %}
      output = Machineid::Linux.machineID
    {% end %}
    {% if flag?(:darwin) %}
      output = Machineid::Darwin.machineID
    {% end %}
    {% if flag?(:bsd) %}
      output = Machineid::Bsd.machineID
    {% end %}
    return output.chomp
  end

  def id
    return machineid()
  end

  def protectedID(appId : String) : String
    return Machineid::ProtectedId.protect(appId)
  end
end
