require 'markety/response/generic_response'

module Markety
  module Response
    class ListOperationResponse < GenericResponse

      def initialize(response)
        super(:list_operation_response,response)
        @list_operation_status = false

        if self.success?
          h = self.to_hash
          @list_operation_status = h[:success_list_operation][:result][:success]
        end
      end

      def list_operation_status?
        @list_operation_status
      end
      alias list_op_status? list_operation_status?
      alias lop_status? list_operation_status?
    end
  end
end
