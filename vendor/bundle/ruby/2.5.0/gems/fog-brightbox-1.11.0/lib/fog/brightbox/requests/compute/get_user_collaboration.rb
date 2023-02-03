module Fog
  module Brightbox
    class Compute
      class Real
        # Shows details of the specified collaboration
        #
        # @param [String] identifier Unique reference to identify the resource
        # @param [Hash] options
        # @option options [Boolean] :nested passed through with the API request. When true nested resources are expanded.
        #
        # @return [Hash] if successful Hash version of JSON object
        #
        # @see https://api.gb1.brightbox.com/1.0/#user_collaboration_get_user_collaboration
        #
        def get_user_collaboration(identifier, options = {})
          return nil if identifier.nil? || identifier == ""
          wrapped_request("get", "/1.0/user/collaborations/#{identifier}", [200], options)
        end
      end
    end
  end
end
