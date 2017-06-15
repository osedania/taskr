Then(/^the new user should be a contractor$/) do
  user = User.last
  expect(user.contractor?).to eq true
end
