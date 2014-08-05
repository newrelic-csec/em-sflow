module EventMachine
  module SFlow
    module DatagramHandler
      def initialize args
        @host = args[:host]
        @callbacks = args[:callbacks]
        @proxy_targets = args[:proxy_targets]
      end
      
      def receive_data data
        unless @proxy_targets.empty?
          @proxy_socket ||= EventMachine.open_datagram_socket(@host, 0)
          
          @proxy_targets.each do |target|
            target_host = target.split(":")[0]
            target_port = target.split(":")[1] || "6343"

            @proxy_socket.send_datagram(data, target_host, target_port)
          end
        end

        datagram = Sflow.new
        #puts data.each_byte.map { |x| x.to_s(16).rjust(2, '0') }.join(" ")
        begin
          #BinData::trace_reading do
            unless data == 'default send string'
              datagram.read(data)
            end
          #end
        rescue Exception => e
          puts e.message
          puts data.each_byte.map { |x| x.to_s(16).rjust(2, '0') }.join(" ")
        end
        @callbacks.each do |callback|
          callback.call datagram
        end
      end
    end
  end
end
