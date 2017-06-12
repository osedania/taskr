Given(/^there are two reqesters having several tasks each belonging to some categories$/) do
  steps %q{
    Given the following requester accounts exist
      | email             | first_name | last_name | password | password_confirmation |
      | requester1@r.com  | Re         | Quester   | 12345678 | 12345678              |
      | requester2@r.com  | Re         | Quester   | 12345678 | 12345678              |

    Given the task categories exist
      | name                |
      | Plumbing            |
      | Electrical          |
      | Computer            |
      | Carpentry           |
      | Cleaning            |

    And the following tasks exists
      | name                | description               | location               | task_category | minimum_budget | maximum_budget  | requester         |
      | Bad computer        | faulty motherboard        | Gothenborg, Sweden     | Computer      | 200            | 400             | requester1@r.com |
      | Bad mowing machine  | power surge damaged       | Gothenborg, Sweden     | Electrical    | 100            |                 | requester2@r.com |
      | Broken pipe         | pipe in kitchen broken    | Stockholm, Sweden      | Plumbing      |                | 70              | requester1@r.com |
      | fix broken table    | faulty motherboard        | Pretoria, South Africa | Carpentry     |                |                 | requester2@r.com |
      | fix broken table    | kitchen table leg broken  | Miami, USA             | Carpentry     |                |                 | requester2@r.com |
  }
end
