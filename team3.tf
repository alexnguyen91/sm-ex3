resource "github_team" "team3" {
  name        = "team3"
  description = "team3"
  privacy     = "closed"
}

resource "github_team_membership" "member_team3" {
  for_each = var.role.team3.member

  team_id  = github_team.team3.id
  username = each.key
  role     = "member"
}

resource "github_team_membership" "maintainer_team3" {
  for_each = var.role.team3.maintainer

  team_id  = github_team.team3.id
  username = each.key
  role     = "maintainer"
}

