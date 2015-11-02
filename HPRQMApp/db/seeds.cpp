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
    cout << "    { f_name: \"User\", l_name: " << i << ", employee_num: " << i << ", super_admin: true, email: '" << i << "@hp.com', password:\"" << i << "\"}";
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

return 0;
}
