Given(/^the following tasks exists$/) do |table|
  table.hashes.each do |hash|
    hash["user"] = User.find_by(email: hash["user"])
    hash["task_category"] = TaskCategory.find_by(name: hash["task_category"])
    create(:task, hash)
  end
end
