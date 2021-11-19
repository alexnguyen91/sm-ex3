resource "github_team" "team5" {
  name        = "team5"
  description = "team5"
  privacy     = "closed"
}

resource "github_team_membership" "member_team5" {
  for_each = var.role.team5.member

  team_id  = github_team.team5.id
  username = each.key
  role     = "member"
}

resource "github_team_membership" "maintainer_team5" {
  for_each = var.role.team5.maintainer

  team_id  = github_team.team5.id
  username = each.key
  role     = "maintainer"
}

