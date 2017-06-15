Given(/^the following requester accounts exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:requester, hash)
  end
end

Given(/^the following contractor accounts exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:contractor, hash)
  end
end
