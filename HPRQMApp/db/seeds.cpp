#include <iostream>

using namespace std;

int main()
{
  int role;
  int num_users = 100;
  cout << "load \"#{Rails.root}/db/name.rb\"" << endl;
  cout << "users = User.create(" << endl;
  cout << "  [" << endl;
  cout << "    { f_name: \"#{first_name}\", m_name: \"#{first_name}\", l_name: \"#{last_name}\", employee_num: 420, super_admin: true, email: 'sa@hp.com', password:\"sa\"}," << endl;
  for(int i = 0; i < num_users; i++)
  {
    role = i % 3;
    cout << "    { f_name: \"#{first_name}\", m_name: \"#{first_name}\", l_name: \"#{last_name}\", employee_num: " << i << ", super_admin: false, email: '" << i << "@hp.com', password:\"" << i << "\", role: " << role << "}";
    if(i <= num_users - 1)
      cout << ",";
    cout << endl;
  }
  cout << "  ]" << endl;
  cout << ")" << endl;
  cout <<  endl;

  cout << "projects = Project.create(" << endl;
  cout << "  [" << endl;
  for(int i = 1; i <= num_users; i++)
  {
    cout << "    { project_name: \"Proj" << i << "\", end_date: \"\", ppm_id: \"What is this?\"}";
    if(i <= num_users - 1)
      cout << ",";
    cout << endl;
  }
  cout << "  ]" << endl;
  cout << ")" << endl;
  cout << endl;

  cout << "project_users = ProjectUser.create(" << endl;
  cout << "  [" << endl;
  for(int i = 1; i <= num_users; i++)
  {
    cout << "    { project_id: " << i << ", user_id: " << i << " }";
    if(i <= num_users - 1)
      cout << ",";
    cout << endl;
  }
  cout << "  ]" << endl;
  cout << ")" << endl;
  cout << endl;

  cout << "reviews = Review.create(" << endl;
  cout << "  [" << endl;
  cout << "    { review_name: \"Upload required artifcats to SDLCM\" }," << endl;
  cout << "    { review_name: \"Complete RE Project Startup review\" }," << endl;
  cout << "    { review_name: \"Trigger ALM release from SDLCM\" }," << endl;
  cout << "    { review_name: \"Complete RE Project Scoping review\" }," << endl;
  cout << "    { review_name: \"Complete EDW Scoping Architecture Review\" }," << endl;
  cout << "    { review_name: \"Complete Operational Readiness Review\" }," << endl;
  cout << "    { review_name: \"Complete RE Analysis review\" }," << endl;
  cout << "    { review_name: \"Complete Extract Impact Analysis Review\" }," << endl;
  cout << "    { review_name: \"Complete EDW Architecture Analysis Review\" }," << endl;
  cout << "    { review_name: \"Complete PII and DER Reviews\" }," << endl;
  cout << "    { review_name: \"Complete RE Design Review\" }," << endl;
  cout << "    { review_name: \"Complete DFS Review\" }," << endl;
  cout << "    { review_name: \"Complete EDW Architecture Design Review\" }," << endl;
  cout << "    { review_name: \"Complete RE Construct and Test Review\" }," << endl;
  cout << "    { review_name: \"Obtain DFS sign-off\" }," << endl;
  cout << "    { review_name: \"Complete all other appropriate IT reviews, as necessary\" }," << endl;
  cout << "    { review_name: \"Complete Data Model Peer Review\" }," << endl;
  cout << "    { review_name: \"Complete EDW Architecture Review\" }," << endl;
  cout << "    { review_name: \"Complete MTI Performance Review\" }," << endl;
  cout << "    { review_name: \"Complete MTI Review\" }," << endl;
  cout << "    { review_name: \"Complete RE Acceptance Test Review\" }," << endl;
  cout << "    { review_name: \"Complete MTP Performance Review\" }," << endl;
  cout << "    { review_name: \"Complete RFC Review\" }," << endl;
  cout << "    { review_name: \"Obtain MTP sign-off from business and IT\" }," << endl;
  cout << "    { review_name: \"Complete RE Implementation Review\" }," << endl;
  cout << "    { review_name: \"Attach all remaining SDLCM artifacts\" }," << endl;
  cout << "    { review_name: \"Complete RE Close Out Review\" }" << endl;
  cout << "  ]" << endl;
  cout << ")" << endl;

  cout << "questions = Question.create(" << endl;
  cout << "  [" << endl;
  cout << "    { str: \"Whats your name?\" }," << endl;
  cout << "    { str: \"Whats your age?\" }," << endl;
  cout << "    { str: \"Are you a guy?\" }," << endl;
  cout << "    { str: \"Some important question that needs to be asked?\" }," << endl;
  cout << "    { str: \"What is the square root of green?\" }" << endl;
  cout << "  ]" << endl;
  cout << ")" << endl;

return 0;
}

