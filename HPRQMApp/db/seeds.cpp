#include <iostream>

using namespace std;

int main()
{
  int num_users = 100;
  cout << "users = User.create(" << endl;
  cout << "  [" << endl;
  cout << "    { f_name: \"Super\", l_name: \"Admin\", employee_num: 420, super_admin: true, email: 'sa@hp.com', password:\"sa\"}," << endl;
  for(int i = 0; i < num_users; i++)
  {
    cout << "    { f_name: \"User\", l_name: \"" << i << "\", employee_num: " << i << ", super_admin: false, email: '" << i << "@hp.com', password:\"" << i << "\"}";
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


  cout << "admins = Admin.create(" << endl;
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

  cout << "submitters = Submitter.create(" << endl;
  cout << "  [" << endl;
  for(int i = 1; i <= num_users; i++) //this one is different
  {
    cout << "    { project_id: " << i << ", user_id: " << (i + 1) % num_users << " }," << endl;
    cout << "    { project_id: " << i << ", user_id: " << (i + 2) % num_users << " }";
    if(i <= num_users - 1)
      cout << ",";
    cout << endl;
  }
  cout << "  ]" << endl;
  cout << ")" << endl;
  cout << endl;

  cout << "approvers = Approver.create(" << endl;
  cout << "  [" << endl;
  for(int i = 1; i <= num_users; i++) //this one is different
  {
    cout << "    { project_id: " << i << ", user_id: " << (i + 3) % num_users << " }," << endl;
    cout << "    { project_id: " << i << ", user_id: " << (i + 4) % num_users << " }";
    if(i <= num_users - 1)
      cout << ",";
    cout << endl;
  }
  cout << "  ]" << endl;
  cout << ")" << endl;

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

return 0;
}

