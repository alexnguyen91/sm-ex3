resource "github_team" "team4" {
  name        = "team4"
  description = "team4"
  privacy     = "closed"
}

resource "github_team_membership" "member_team4" {
  for_each = var.role.team4.member

  team_id  = github_team.team4.id
  username = each.key
  role     = "member"
}

resource "github_team_membership" "maintainer_team4" {
  for_each = var.role.team4.maintainer

  team_id  = github_team.team4.id
  username = each.key
  role     = "maintainer"
}

