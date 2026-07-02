# spec/support/controller_macros.rb

module ControllerMacros
  def login_user(user)
    @request.env['devise.mapping'] = Devise.mappings[:user]
    controller.stub(:current_user).and_return(user)
    sign_in(user, scope: :user)
  end
end
