locals {
  sa = distinct(flatten([for i in var.members : [for j in var.roles : join("=>", [i, j, var.project])]]))
}

resource "google_project_iam_member" "members" {
  for_each = toset(local.sa)
  project  = element(split("=>", each.value), 2)
  role     = element(split("=>", each.value), 1)
  member   = element(split("=>", each.value), 0)
}
