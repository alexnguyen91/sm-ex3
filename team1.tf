resource "github_team" "team1" {
  name        = "team1"
  description = "team1"
  privacy     = "closed"
}

resource "github_team_membership" "member_team1" {
  for_each = var.role.team1.member

  team_id  = github_team.team1.id
  username = each.key
  role     = "member"
}

resource "github_team_membership" "maintainer_team1" {
  for_each = var.role.team1.maintainer

  team_id  = github_team.team1.id
  username = each.key
  role     = "maintainer"
}

