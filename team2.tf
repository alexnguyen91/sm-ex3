resource "github_team" "team2" {
  name        = "team2"
  description = "team2"
  privacy     = "closed"
}

resource "github_team_membership" "member_team2" {
  for_each = var.role.team2.member

  team_id  = github_team.team2.id
  username = each.key
  role     = "member"
}

resource "github_team_membership" "maintainer_team2" {
  for_each = var.role.team2.maintainer

  team_id  = github_team.team2.id
  username = each.key
  role     = "maintainer"
}

