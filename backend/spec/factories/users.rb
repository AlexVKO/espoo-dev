FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    password { '123456' }
    role { User::ROLES[0] }
  end

  factory :user_moderator, parent: :user do
    role { User::ROLES[1] }
  end

  factory :user_teacher, parent: :user do
    role { User::ROLES[2] }
  end
end
