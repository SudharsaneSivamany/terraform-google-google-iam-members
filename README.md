# terraform-google-google-iam-members

This module is to add members to multiple roles in a project

Sample of module

module "members" {
  source = "SudharsaneSivamany/google-iam-members/google"            
  project = "my-project"
  roles   = ["roles/storage.objectAdmin", "roles/logging.logWriter"]
  members = ["serviceAccount:my-service@proj-1.iam.gserviceaccount.com","user:my-user@xyz.com","group:my-group@xyz.com"]
}

Input Required

project = string

roles   = list(string)

members = list(string)

Output

roles  = contains member binded with roles in project

