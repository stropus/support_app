class User < ActiveRecord::Base
  CUSTOMER_ROLE_ID = 1

  def support?
    # так можно, используя файл settings.yml и определяя там свои настройки (переменные)
    # role == Settings.roles.customer_role_id
    role == SUPPORT_ROLE_ID
  end


end
