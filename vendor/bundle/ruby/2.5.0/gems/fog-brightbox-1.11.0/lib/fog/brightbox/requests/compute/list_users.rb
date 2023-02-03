module Fog
  module Brightbox
    class Compute
      class Real
        # Lists summary details of user.
        #
        # @param [Hash] options
        # @option options [Boolean] :nested passed through with the API request. When true nested resources are expanded.
        #
        # @return [Hash] if successful Hash version of JSON object
        #
        # @see https://api.gb1.brightbox.com/1.0/#user_list_users
        #
        def list_users(options = {})
          wrapped_request("get", "/1.0/users", [200], options)
        end
      end
    end
  end
end
