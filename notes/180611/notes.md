1. rails g controller
- controller
- views
- routes
2. has_secure_password
- mapping password_digest to database
- 2 virtual attributes (password & password_confirmation) in model
- create authenticate method to check password
3. restful
- 7 methods: index show new create edit update destroy
4. signup
- form_for(User.new), action="/users" (match "resources :users")
- name="user[x]" -> post params: key "user"
- change @user to @abc, still work because still model "User"
- authenticity_token: csrf token. generate new token every time. require uniqueness. Form cannot be reused.
- sign up : prevent mass sign up. captcha / IP / csrf

