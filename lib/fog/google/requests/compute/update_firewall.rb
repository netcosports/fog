module Fog
  module Compute
    class Google

      class Mock

        def update_firewall(name, options={})
          Fog::Mock.not_implemented
        end

      end

      class Real

        def update_firewall(name, opts={})
          api_method = @compute.firewalls.update
          parameters = {
            'project' => @project,
            'firewall' => name,
          }

          body_object = { 'name' => name }
          body_object.merge!(opts)

          result = self.build_result(api_method, parameters, body_object)
          response = self.build_response(result)
        end

      end

    end
  end
end
