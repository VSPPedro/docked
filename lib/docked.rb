# frozen_string_literal: true

require 'socket'

# Docked is able to detect whether a docker is being used and then return the local addresses.
class Docked
  def self.ip_addresses
    return [] unless File.file?('/.dockerenv')

    ip_addresses = []

    Socket.ip_address_list.each do |addrinfo|
      next unless addrinfo.ipv4?
      next if addrinfo.ip_address == '127.0.0.1'

      ip_address = IPAddr.new(addrinfo.ip_address).mask(24)

      ip_addresses << ip_address
    end

    ip_addresses
  end
end
