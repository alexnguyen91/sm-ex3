resource "github_team" "team6" {
  name        = "team6"
  description = "team6"
  privacy     = "closed"
}

resource "github_team_membership" "member_team6" {
  for_each = var.role.team6.member

  team_id  = github_team.team6.id
  username = each.key
  role     = "member"
}

resource "github_team_membership" "maintainer_team6" {
  for_each = var.role.team6.maintainer

  team_id  = github_team.team6.id
  username = each.key
  role     = "maintainer"
}

