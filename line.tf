module "line" {
  source         = "modules/repository"
  name           = "line-cookbook"
  description    = "Development repository for the line cookbook"
  cookbook_team  = "${github_team.line.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "line" {
  name        = "line"
  description = "Line Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "line-maintainer-1" {
  team_id  = "${github_team.line.id}"
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "line-maintainer-2" {
  team_id  = "${github_team.line.id}"
  username = "someara"
  role     = "maintainer"
}

resource "github_team_membership" "line-maintainer-3" {
  team_id  = "${github_team.line.id}"
  username = "MarkGibbons"
  role     = "maintainer"
}
