terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {}

resource "github_membership" "membership" {
  for_each = var.member_list

  username = each.key
  role     = each.value.role
}

