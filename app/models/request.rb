class Request < ActiveRecord::Base
  PENDING_STATUS = 1

  def support?
    status == EXECUTION_STATUS
  end


end
