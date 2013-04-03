class DonorPermitter < ApplicationPermitter
  permit :first_name
  permit :last_name
  permit :tool_id

end