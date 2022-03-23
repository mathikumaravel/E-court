class CaseInfo < ApplicationRecord
    belongs_to :user
    belongs_to :court_name
    belongs_to :case_type
    belongs_to :case_category
    belongs_to :judge
end
