Given(/^there are two reqesters having several tasks each belonging to some categories$/) do
  steps %q{
    Given the following requester accounts exist
      | email             | first_name | last_name | password | password_confirmation |role       |
      | requester1@r.com  | Re         | Quester   | 12345678 | 12345678              |requester  |
      | requester2@r.com  | Re         | Quester   | 12345678 | 12345678              |requester  |

    Given the task categories exist
      | name                |
      | Plumbing            |
      | Electrical          |
      | Computer            |
      | Carpentry           |
      | Cleaning            |
      | Delivery            |

    And the following tasks exists
      | name                | description                 | location               | task_category | minimum_budget | maximum_budget  | user             | status     |
      | Bad computer        | faulty motherboard          | Gothenborg, Sweden     | Computer      | 200            | 400             | requester1@r.com | Open       |
      | Bad mowing machine  | power surge damaged         | Gothenborg, Sweden     | Electrical    | 100            |                 | requester2@r.com | Bidding    |
      | Broken pipe         | pipe in kitchen broken      | Stockholm, Sweden      | Plumbing      |                | 70              | requester1@r.com | Open       |
      | Fix broken table    | faulty motherboard          | Pretoria, South Africa | Carpentry     |                |                 | requester2@r.com | Contracted |
      | Fix broken table    | kitchen table leg broken    | Miami, USA             | Carpentry     |                |                 | requester2@r.com | Received   |
      | Wall stickers       | Peel off stickers from wall | Miami, USA             | Carpentry     |                |                 | requester1@r.com | Complete   |
      | Deliver meal        | Pizza deliery to me         | London                 | Delivery      |                |                 | requester2@r.com | Closed     |
  }
end
