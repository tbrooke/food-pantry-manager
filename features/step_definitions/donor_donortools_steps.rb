

Given /^I visit the donations page$/ do
  visit new_donation_path
end

When /^I search for (.*)$/ do |term|
  @donors ||= {}
  @donors[term] = DonorSearch.search_name(term)
end


And /^(.*) is in Donortools$/ do |term|

end

Then /^I should see (.*) in the search box$/ do |term|

end



