require "ffaker"

350_000.times do |i|
  Customer.create!(
    first_name: FFaker::Name.first_name,
    last_name:  FFaker::Name.last_name,
    username:   FFaker::Internet.user_name + i.to_s,
    email:      FFaker::Internet.user_name + i.to_s + "@" +
                  FFaker::Internet.domain_name
  )
end
