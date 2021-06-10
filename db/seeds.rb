AdminUser.create!(email: 'admin@example.com', password: 'password') if Rails.env.development?
User.create!(email: 'admin@example.com', password: 'password') if Rails.env.development?
Setting.create_or_find_by!(key: 'min_version', value: '0.0')
User.create!(email: 'shipit@prueba.com', password: '12345678')
