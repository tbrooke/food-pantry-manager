
existing_donor = {
    first_name: 'Mary',
    last_name: 'Brooks',
}

Given /^I visit the donations page$/ do
  visit new_donation_path
end

When /^I search for '(.*?)'$/ do |term|
  @searchee = DonorSearch.new
  @donors ||= {}
  @donors[term] = @searchee.search_name(term)
end

And /^'(.*?)' is in Donors$/ do |term|
  @donor = Donor.create(existing_donor)
  @donor.name == '#{term}'
end


And /^'(.*?)' is in Donortools$/ do |term|

end

Then /^I should see '(.*?)' in the search box$/ do |term|

end
And /^'(.*?)' is not in Donors$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end

And /^'(.*?)' is not in DonorTools$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should be able to add '(.*?)'$/ do
    pending # express the regexp above with the code you wish you had
end

And /^'(.*?)' is not in Donors$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end

And /^I search for '(.*?)' in DonorTools$/ do
    pending # express the regexp above with the code you wish you had
end




