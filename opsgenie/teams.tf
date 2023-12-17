
resource "opsgenie_team" "new_team" {
  name        = "Majid-Test"
  description = "This team is about hands on experience"
  member {
    id   = opsgenie_user.nuhu.id
    role = "admin"
  }
}