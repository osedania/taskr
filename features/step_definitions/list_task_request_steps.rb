Given(/^the following tasks exists$/) do |table|
  table.hashes.each do |hash|
    hash["requester"] = Requester.find_by(email: hash["requester"])
    hash["task_category"] = TaskCategory.find_by(name: hash["task_category"])
    create(:task, hash)
  end
end
